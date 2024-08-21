import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/categroy_list.dart';
import 'package:hotels/screens/widgets/resturant/hotel_mainview_category_item.dart';

class HotelMainviewCategoryList extends StatelessWidget {
  const HotelMainviewCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: HotelMainviewCategoryItem(
            model: categories[index],
          ),
        ),
        itemCount: categories.length,
      ),
    );
  }
}
