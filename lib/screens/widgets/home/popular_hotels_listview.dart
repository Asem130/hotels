import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/screens/widgets/home/popular_hotel_item.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      builder: (controller) {
        return SizedBox(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: AppPadding.p8),
              child: PopularHotelItem(
                hotel: controller.popularHotels[index],
              ),
            ),
            itemCount: controller.popularHotels.length,
          ),
        );
      },
    );
  }
}
