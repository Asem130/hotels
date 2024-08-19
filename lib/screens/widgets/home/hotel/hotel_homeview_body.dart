import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/hotel/floating_contanier.dart';
import 'package:hotels/screens/widgets/home/hotel/food_gridview.dart';
import 'package:hotels/screens/widgets/home/hotel/hotel_appbar.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_item.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_list.dart';
import 'package:hotels/screens/widgets/home/hotel/restaurant_menu_item.dart';

class HotelHomeViewBody extends GetView<HotelHomeController> {
  const HotelHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelHomeController>(
      init: HotelHomeController(),
      builder: (controller) => CustomScrollView(slivers: [
        const SliverToBoxAdapter(
            child: Stack(
          children: [const HotelAppBar(), FloatingContanier()],
        )),
        SliverToBoxAdapter(
          child: Container(
            height: 900,
            child: Stack(
              children: [
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 8, left: 8, top: 8.h, bottom: 8),
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
                      TabBar(
                          controller: controller.tabController,
                          indicatorColor: AppColor.seconPrimary,
                          labelStyle: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.black),
                          unselectedLabelStyle: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.grey),
                          tabs: const [
                            Tab(
                              text: 'Food',
                            ),
                            Tab(
                              text: 'Maps',
                            ),
                            Tab(
                              text: 'overview',
                            ),
                          ]),
                      SizedBox(
                        height: 300.h,
                        child: TabBarView(
                          controller: controller.tabController,
                          children: [
                            Container(
                              child: Column(),
                            ),
                            Text('data'),
                            Text('data')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
