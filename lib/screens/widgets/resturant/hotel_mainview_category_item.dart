import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/data/static/model/category.dart';

class HotelMainviewCategoryItem extends StatelessWidget {
  const HotelMainviewCategoryItem({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          width: 50.h,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColor.primary.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(model.image),
        ),
        Text(
          model.name,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 16.sp),
        )
      ],
    );
  }
}
