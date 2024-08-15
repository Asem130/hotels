import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/data/remote/model/hotel.dart';

class DiscoverHotelsItem extends StatelessWidget {
  const DiscoverHotelsItem({super.key, required this.hotel});
  final HotelModel hotel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 120.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s8),
              child: Image.network(
                hotel.mainImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            hotel.name,
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
