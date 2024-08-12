import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/class/states.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotels/core/functions/internet_check.dart';
import 'package:hotels/core/functions/show_toast.dart';

abstract class RegisterController extends GetxController {
  registerUsingEmailAndPassword(
      String email, String password, String firstName, String lastName);
  goToLogin();
}

class RegisterControllerImp extends RegisterController {
  bool inAsyncCall = false;
  late TextEditingController firstName;
  late TextEditingController email;
  late TextEditingController lastName;
  late TextEditingController password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  States registerState = States.non;
  @override
  goToLogin() {
    Get.offNamed(Routes.looginRoute);
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  registerUsingEmailAndPassword(
      String email, String password, String firstName, String lastName) async {
    if (formKey.currentState!.validate()) {
      if (await checkInternet()) {
        registerState = States.loading;
        inAsyncCall = true;
        update();
        try {
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email,
            password: password,
          );

          toastShow("Success", ToastStates.SUCCESS);
          inAsyncCall = false;
          update();
          await addUser(firstName, lastName);

          goToLogin();
          registerState = States.sucess;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            inAsyncCall = true;
            update();
            registerState = States.weakPassword;
            toastShow("weak-password", ToastStates.ERROR);

            inAsyncCall = false;
            update();
          } else if (e.code == 'email-already-in-use') {
            inAsyncCall = true;
            update();
            registerState = States.emailAlreadyInUse;
            toastShow("email already exist", ToastStates.ERROR);

            inAsyncCall = false;
            update();
          }
        }
      } else {
        Get.offAllNamed(Routes.noInternetConection);
        return registerState = States.offlinefailure;
      }
      update();
    }
  }

  @override
  void onInit() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    password.dispose();
    super.onClose();
  }

  Future<void> addUser(String firstName, String lastName) {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'firstName': firstName, // John Doe
          'lastName': lastName, // Stokes and Sons
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
