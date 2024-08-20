import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';
import 'package:hotels/screens/widgets/home/hotel/floating_contanier.dart';

class HotelAppBar extends GetView<HotelHomeController> {
  const HotelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeContrller = Get.find();
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: const Color(0xfF08060C)),
              child: Icon(
                Icons.share,
                color: AppColor.primary,
              )),
        )
      ],
      elevation: 100,
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
      centerTitle: true,
      floating: false,
      expandedHeight: 200.h,
      pinned: true,
      stretch: true,
      backgroundColor: AppColor.black,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        expandedTitleScale: 1,
        stretchModes: const [StretchMode.blurBackground, StretchMode.fadeTitle],
        titlePadding: const EdgeInsets.only(
          bottom: 0,
        ),
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
        centerTitle: true,
      ),
    );
  }
}
