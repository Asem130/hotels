import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

ThemeData themeEnglish = ThemeData(
  useMaterial3: true,
  fontFamily: "Marcellus",
  textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      headlineSmall: TextStyle(
          height: 2,
          color: AppColor.gery,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyLarge: TextStyle(height: 2, color: AppColor.gery, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  useMaterial3: false,
  fontFamily: "Kufam",
  textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.gery,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: AppColor.gery, fontSize: 14)),
  primarySwatch: Colors.blue,
);
