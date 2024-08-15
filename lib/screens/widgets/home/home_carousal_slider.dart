import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      init: HomeControllerImp(),
      builder: (controller) {
        return CustomCrouserSlider(
            items: controller.data.map((i) {
              return Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      fit: BoxFit.cover,
                      i['mainImage'],
                    ),
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
            scrollDirection: Axis.vertical,
            enlargeFactor: 0.3,
            viewportFraction: 1);
      
      },
    );
  }
}
