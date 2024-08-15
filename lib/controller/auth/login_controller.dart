import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/class/states.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/core/functions/internet_check.dart';
import 'package:hotels/core/functions/show_toast.dart';

abstract class LoginController extends GetxController {
  login(String email, String password);
  goToHome();
  goToRegister();
}

class LoginControllerImp extends LoginController {
  late TextEditingController password;
  late TextEditingController email;
  bool inAsyncCall = false;
  var auth = FirebaseAuth.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  States loginStates = States.non;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  goToHome() {
    Get.offAllNamed(Routes.homeRoute);
  }

  @override
  goToRegister() {
    Get.toNamed(Routes.registerRoute);
  }

  @override
  login(String email, String password) async {
    if (formKey.currentState!.validate()) {
      if (await checkInternet()) {
        loginStates = States.loading;
        inAsyncCall = true;
        update();

        try {
          await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          toastShow("Success", ToastStates.SUCCESS);
          inAsyncCall = false;

          goToHome();
          loginStates = States.sucess;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            loginStates = States.weakPassword;
            toastShow("No user found for that email.", ToastStates.ERROR);
            inAsyncCall = false;
            update();
          } else if (e.code == 'wrong-password') {
            loginStates = States.weakPassword;
            inAsyncCall = false;
            toastShow("wrong-password", ToastStates.ERROR);
            update();
          }
        }
      } else {
        Get.offAllNamed(Routes.noInternetConection);
        return loginStates = States.offlinefailure;
      }
    }

    update();
  }
}
