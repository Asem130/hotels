import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

toastShow(String text, ToastStates state) => Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 5,
    backgroundColor: chooseColor(state),
    textColor: AppColor.white,
    fontSize: 16);

enum ToastStates { SUCCESS, ERROR, WARING }

Color? chooseColor(ToastStates state) {
  Color? color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARING:
      color = Colors.amber;
      break;
  }
  return color;
}
