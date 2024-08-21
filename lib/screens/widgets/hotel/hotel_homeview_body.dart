import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';
import 'package:hotels/screens/widgets/hotel/fees_and_policies.dart';
import 'package:hotels/screens/widgets/hotel/hote_rate.dart';
import 'package:hotels/screens/widgets/hotel/hotel_appbar.dart';
import 'package:hotels/screens/widgets/hotel/hotel_line_seperator.dart';
import 'package:hotels/screens/widgets/hotel/popular_anemitinal_list.dart';

import 'package:hotels/screens/widgets/hotel/tabview.dart';

class HotelHomeViewBody extends GetView<HotelHomeController> {
  const HotelHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeContrller = Get.find();
    return GetBuilder<HotelHomeController>(
      init: HotelHomeControllerImp(),
      builder: (controller) => CustomScrollView(slivers: [
        CustomHotelAppBar(
          expandedHeight: 300,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: const Color(0xfF08060C)),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColor.primary,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 38.w,
                height: 38.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: const Color(0xfF08060C)),
                child: Icon(
                  Icons.share,
                  color: AppColor.primary,
                ),
              ),
            ),
          ],
          background: CustomCrouserSlider(
            enlargeFactor: 0,
            items: homeContrller.data.map((i) {
              return Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                    fit: BoxFit.cover,
                    i['mainImage'],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      i['name'],
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: AppColor.white),
                    ),
                  ),
                ],
              );
            }).toList(),
            scrollDirection: Axis.horizontal,
            viewportFraction: 1,
            height: 300.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      left: 8.w,
                      top: 8.h,
                    ),
                    child: Text(
                      'Popular anemitinal',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: AppColor.seconPrimary),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: PopularAnemitinalList()),
                  const CustomTabBar(),
                  const Sepertor(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FeesAndPolicies(),
                  ),
                  const Sepertor(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: HotelRate(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
