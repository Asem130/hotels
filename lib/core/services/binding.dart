import 'package:get/get.dart';
import 'package:hotels/controller/auth/login_controller.dart';
import 'package:hotels/controller/auth/register_controller.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/controller/splash/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashControllerImp());
    Get.put(RegisterControllerImp());
    Get.put(LoginControllerImp());
    Get.put(HotelHomeControllerImp());
  }
}
