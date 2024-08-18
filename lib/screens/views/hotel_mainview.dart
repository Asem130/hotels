import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';
import 'package:hotels/screens/widgets/home/hotel/floating_contanier.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_item.dart';

class HotelMainView extends StatelessWidget {
  const HotelMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotelMainViewBody();
  }
}

class HotelMainViewBody extends StatelessWidget {
  const HotelMainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      init: HomeControllerImp(),
      builder: (controller) {
        return Stack(
          children: [
            Scaffold(
              backgroundColor: AppColor.primary,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCrouserSlider(
                      enlargeFactor: 0.1,
                      items: controller.data.map((i) {
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
                    Padding(
                      padding: EdgeInsets.only(
                          right: 8, left: 8, top: 110.h, bottom: 8),
                      child: Text(
                        'Popular anemitinal',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: AppColor.seconPrimary),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        shrinkWrap: true,
                        clipBehavior: Clip.hardEdge,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.9,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) =>
                            const PopularAnemitinalItem(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const FloatingContanier(),
          ],
        );
      },
    );
  }
}
