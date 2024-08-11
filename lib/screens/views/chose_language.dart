import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/language_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/screens/widgets/localization/language_button.dart';

class ChoseLanguage extends StatelessWidget {
  const ChoseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: ChoseLanguageBody(),
      ),
    );
  }
}

class ChoseLanguageBody extends GetView<LanguageControllerIml> {
  const ChoseLanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text('2'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 20.sp)),
        ),
        SizedBox(
          height: 50.h,
        ),
        LanguageBotton(
          text: 'Arabic',
          onTap: () {
            controller.changeLanguage("ar");
            Get.offNamed(Routes.registerRoute);
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        LanguageBotton(
          text: 'English',
          onTap: () {
            controller.changeLanguage("en");
            Get.offNamed(Routes.registerRoute);
          },
        ),
      ],
    );
  }
}
