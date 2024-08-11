import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/styles.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({required this.text, super.key, required this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.sp),
      splashColor: AppColor.lightPrimary,
      onTap: onTap,
      child: Ink(
        width: MediaQuery.of(context).size.width,
        height: 40.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 134, 134, 134).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 30,
              offset: const Offset(1, 1),
            )
          ],
          gradient: LinearGradient(colors: [
            AppColor.primaryBold,
            AppColor.darkPrimary,
          ]),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle18,
          ),
        ),
      ),
    );
  }
}
