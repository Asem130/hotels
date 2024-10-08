import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/data/remote/model/hotel.dart';

class PopularHotelItem extends StatelessWidget {
  const PopularHotelItem({super.key, required this.hotel});
  final HotelModel hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.s8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 75.h,
            width: 120.w,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s8),
                  topRight: Radius.circular(AppSize.s8)),
              child: Image.network(
                hotel.mainImage,
                width: 120.w,
                height: 75.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 75.h,
            width: 120.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 18.sp, color: AppColor.black),
                  ),
                  Text('Egypt-Sina',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontSize: 12.sp, color: AppColor.gery)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('${hotel.price}\$',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.green)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
