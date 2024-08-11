import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/splash/splash_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/splash/splash_view_body.dart';

class SplashView extends GetView<SplashControllerImp> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        backgroundColor: AppColor.primary, body: const SplashViewBody());
  }
}
