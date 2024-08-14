import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/screens/widgets/home/popular_hotel_item.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: AppPadding.p8),
          child: PopularHotelItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
