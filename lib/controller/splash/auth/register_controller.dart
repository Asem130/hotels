import 'package:get/get.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';

abstract class RegisterController extends GetxController {
  postData();
  goToLogin();
}

class RegisterControllerImp extends RegisterController {
  @override
  goToLogin() {
    Get.offNamed(Routes.loginRoute);
  }

  @override
  postData() {}
}
