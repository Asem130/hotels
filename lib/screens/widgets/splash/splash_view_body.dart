import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hotels/controller/language_controller.dart';
import 'package:hotels/core/constants/resources/assets_manger.dart';

class SplashViewBody extends GetView<LanguageControllerIml> {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageAssets.splashLogo,
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
        ),
        Text('1'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 20.sp))
      ],
    );
  }
}
