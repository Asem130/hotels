import 'package:get/get.dart';
import 'package:hotels/controller/splash/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashControllerImp());
    
  }
}
