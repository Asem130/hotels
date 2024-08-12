import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle:
          TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.primary)),
            onPressed: () {
              exit(0);
            },
            child: const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.primary)),
            onPressed: () {
              Get.back();
            },
            child: const Text("الغاء"))
      ]);
  return Future.value(true);
}
