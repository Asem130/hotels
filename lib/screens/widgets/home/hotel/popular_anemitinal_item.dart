import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class PopularAnemitinalItem extends StatelessWidget {
  const PopularAnemitinalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.wifi,
          size: 20,
          color: AppColor.black,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Free Wifi',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColor.darkPrimary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
