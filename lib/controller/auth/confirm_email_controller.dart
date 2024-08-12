import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class ConfirmEmailController extends GetxController {
  sendEmailVervicationLink();
}

class ConfirmEmailControllerImp extends ConfirmEmailController {
  final auth = FirebaseAuth.instance;
  @override
  sendEmailVervicationLink() {
    auth.currentUser?.sendEmailVerification();
  }
}
