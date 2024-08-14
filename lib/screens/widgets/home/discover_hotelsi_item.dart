import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class DiscoverHotelsItem extends StatelessWidget {
  const DiscoverHotelsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 120.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/images/imge.jpg')),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Cairo',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 18, color: AppColor.seconPrimary),
          ),
        ],
      ),
    );
  }
}
