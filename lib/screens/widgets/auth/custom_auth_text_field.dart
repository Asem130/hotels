import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';

class CustomAuthTextFeild extends StatelessWidget {
  const CustomAuthTextFeild({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
    this.obsecuer = false,
    required this.lable,
    this.controller,
    required this.validatior,
  });
  final String hintText;
  final bool obsecuer;
  final String lable;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String) onChanged;
  final TextInputType? inputType;
  final String? Function(String?)? validatior;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validatior,
      controller: controller,
      cursorColor: AppColor.darkPrimary,
      style: const TextStyle(
        color: Color.fromARGB(
          255,
          0,
          0,
          0,
        ),
      ),
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9.w),
            child: Text(lable,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: AppSize.s18.sp))),
        filled: true,
        fillColor: AppColor.white,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.gery),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8.sp),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s8.sp),
            borderSide: BorderSide(width: 0.w, color: AppColor.white)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8.sp),
          borderSide: BorderSide(width: 1.5.w, color: AppColor.seconPrimary),
        ),
      ),
    );
  }
}
