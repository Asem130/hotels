import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/hotel/hotel_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class Resturant extends StatelessWidget {
  const Resturant({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelHomeControllerImp>(
      init: HotelHomeControllerImp(),
      builder: (controller) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/resturant.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Text(
              'Teryanon',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.white, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40)),
                onPressed: () {
                  controller.goToResturantView();
                },
                child: Text('Visit',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColor.white,
                          fontSize: 20,
                        ))),
          ),
        ],
      ),
    );
  }
}
