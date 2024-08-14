import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/auth/register_controller.dart';
import 'package:hotels/core/constants/resources/assets_manger.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/functions/vaild_input.dart';
import 'package:hotels/screens/widgets/auth/custom_auth_botton.dart';
import 'package:hotels/screens/widgets/auth/custom_auth_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterControllerImp>(
        init: RegisterControllerImp(),
        builder: (controller) {
          return ModalProgressHUD(
            blur: 2,
            color: AppColor.primary,
            inAsyncCall: controller.inAsyncCall,
            progressIndicator: CircularProgressIndicator(
              color: AppColor.darkPrimary,
            ),
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          ImageAssets.splashLogo,
                          height: 200.h,
                        ),
                      ),
                      Text("3".tr,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: AppColor.seconPrimary)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('4'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: AppColor.gery, fontSize: 16.sp)),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomAuthTextFeild(
                        controller: controller.firstName,
                        validatior: (val) {
                          return validInput(val!, 3, 20, "username");
                        },
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColor.seconPrimary,
                        ),
                        lable: "5".tr,
                        hintText: "Asem",
                        onChanged: (v) {
                          controller.firstName.text = v;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomAuthTextFeild(
                        validatior: (val) {
                          return validInput(val!, 3, 20, "username");
                        },
                        controller: controller.lastName,
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColor.seconPrimary,
                        ),
                        lable: "6".tr,
                        hintText: "ali",
                        onChanged: (v) {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomAuthTextFeild(
                        controller: controller.email,
                        validatior: (val) {
                          return validInput(val!, 3, 50, "email");
                        },
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: AppColor.seconPrimary,
                        ),
                        lable: "7".tr,
                        hintText: "example@gamil.com",
                        onChanged: (v) {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomAuthTextFeild(
                        controller: controller.password,
                        validatior: (val) {
                          return validInput(val!, 3, 20, "password");
                        },
                        prefixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                          color: AppColor.seconPrimary,
                        ),
                        lable: "8".tr,
                        hintText: "user password",
                        onChanged: (v) {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthButton(
                          text: "9".tr,
                          onTap: () {
                            controller.registerUsingEmailAndPassword(
                              controller.email.text,
                              controller.email.text,
                            );
                          }),
                      Row(
                        children: [
                          Text(
                            '10'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: AppColor.seconPrimary,
                                    fontSize: 14.sp),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              controller.goToLogin();
                            },
                            child: Text(
                              '11'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: AppColor.primaryBold,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
