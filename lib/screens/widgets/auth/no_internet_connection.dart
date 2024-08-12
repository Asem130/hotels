import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/auth/register_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/core/functions/internet_check.dart';
import 'package:hotels/screens/widgets/auth/custom_auth_botton.dart';
import 'package:lottie/lottie.dart';

class NoInternetConection extends GetView<RegisterControllerImp> {
  const NoInternetConection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'No Internet connection',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColor.error),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'please check your internet connection and try again',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
                child: Lottie.asset('assets/lottie/offline.json',
                    width: 250.w, height: 250.w)),
            SizedBox(
              height: 50.h,
            ),
            AuthButton(
                text: "try again",
                onTap: () async {
                  if (await checkInternet() == true) {
                    Get.offNamed(Routes.registerRoute);
                  }
                })
          ],
        ),
      ),
    );
  }
}
