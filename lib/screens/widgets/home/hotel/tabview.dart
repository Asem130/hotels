import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/hotel/fees_and_charge.dart';
import 'package:hotels/screens/widgets/home/hotel/resturant.dart';

class CustomTabBar extends GetView<HotelHomeController> {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: controller.tabController,
            indicatorColor: AppColor.seconPrimary,
            labelStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColor.seconPrimary),
            unselectedLabelStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.grey),
            tabs: const [
              Tab(
                text: 'Resturant',
              ),
              Tab(
                text: 'Maps',
              ),
              Tab(
                text: 'overview',
              ),
            ]),
        SizedBox(
          height: 250.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              controller: controller.tabController,
              children: const [
                Resturant(),
                Text('maaaaaaaaaaaaaap'),
                AboutHotel()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
