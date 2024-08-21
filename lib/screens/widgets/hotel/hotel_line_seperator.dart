import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class Sepertor extends StatelessWidget {
  const Sepertor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightGrey,
      height: 1,
      width: MediaQuery.of(context).size.width,
    );
  }
}
