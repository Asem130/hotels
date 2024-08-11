import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';

abstract class SplashController extends GetxController {
  goToLogin();
}

class SplashControllerImp extends SplashController {
  @override
  goToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(Routes.choseLanguage);
    });
  }

  @override
  void onInit() {
    goToLogin();
    super.onInit();
  }
}
