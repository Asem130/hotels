import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class ConfirmEmailView extends StatelessWidget {
  const ConfirmEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: ConfirmEmailBody(),
      ),
    );
  }
}

class ConfirmEmailBody extends StatelessWidget {
  const ConfirmEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "We have sent a verification code to your email.",
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 28),
        ),
        SizedBox(
          height: 50.h,
        ),
        OtpTextField(
          numberOfFields: 5,
          filled: true,
          showFieldAsBox: true,
          fillColor: AppColor.white,
          borderRadius: BorderRadius.circular(16),
          borderWidth: 2,
          borderColor: AppColor.black,
          cursorColor: AppColor.darkPrimary,
          focusedBorderColor: AppColor.darkPrimary,
          fieldWidth: 50.w,
          fieldHeight: 50.h,
        )
      ],
    );
  }
}
