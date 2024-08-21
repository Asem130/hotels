import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class GuestsReviewItem extends StatelessWidget {
  const GuestsReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 150.h,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(width: 1, color: AppColor.lightGrey)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '10/10 Exceptional',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Everything was great except the service by the pool was extremely slow.',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 12),
            ),
            const Spacer(),
            Text(
              'Asem',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColor.seconPrimary, fontSize: 12),
            ),
            Text(
              'jun 20,2024',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColor.seconPrimary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
