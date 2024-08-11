import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/font_manger.dart';
import 'package:hotels/core/constants/resources/styles_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.lightPrimary,
    primaryColorDark: AppColor.darkPrimary,
    disabledColor: AppColor.grey1,
    splashColor: AppColor.lightPrimary,
    cardTheme: CardTheme(
      color: AppColor.white,
      shadowColor: AppColor.gery,
      elevation: AppSize.s4,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColor.primary,
      elevation: AppSize.s4,
      shadowColor: AppColor.lightPrimary,
      titleTextStyle: getRegularStyle(
        fontSize: FontSize.s16,
        color: AppColor.white,
      ),
    ),
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: AppColor.grey1,
        buttonColor: AppColor.primary,
        splashColor: AppColor.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: AppColor.white,
          fontSize: FontSize.s18,
        ),
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: AppColor.darkGrey, fontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            color: AppColor.darkGrey, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: AppColor.darkGrey, fontSize: FontSize.s14),
        titleMedium:
            getMeduimStyle(color: AppColor.primary, fontSize: FontSize.s16),
        titleSmall:
            getRegularStyle(color: AppColor.white, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: AppColor.grey1),
        bodySmall: getRegularStyle(color: AppColor.gery),
        bodyMedium:
            getRegularStyle(color: AppColor.grey2, fontSize: FontSize.s12),
        labelSmall:
            getBoldStyle(color: AppColor.primary, fontSize: FontSize.s12)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle:
            getRegularStyle(color: AppColor.grey1, fontSize: FontSize.s14),
        labelStyle:
            getMeduimStyle(color: AppColor.gery, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: AppColor.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColor.gery, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColor.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColor.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColor.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
  );
}
