import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/hotel/fees_and_charge.dart';
import 'package:hotels/screens/widgets/home/hotel/fees_and_policies.dart';
import 'package:hotels/screens/widgets/home/hotel/floating_contanier.dart';
import 'package:hotels/screens/widgets/home/hotel/food_gridview.dart';
import 'package:hotels/screens/widgets/home/hotel/guests_review_item.dart';
import 'package:hotels/screens/widgets/home/hotel/guests_review_listview.dart';
import 'package:hotels/screens/widgets/home/hotel/hote_rate.dart';
import 'package:hotels/screens/widgets/home/hotel/hotel_appbar.dart';
import 'package:hotels/screens/widgets/home/hotel/hotel_line_seperator.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_item.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_list.dart';
import 'package:hotels/screens/widgets/home/hotel/resturant.dart';
import 'package:hotels/screens/widgets/home/hotel/tabview.dart';

class HotelHomeViewBody extends GetView<HotelHomeController> {
  const HotelHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelHomeController>(
      init: HotelHomeController(),
      builder: (controller) => CustomScrollView(slivers: [
        const HotelAppBar(),
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
                  CustomTabBar(),
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
