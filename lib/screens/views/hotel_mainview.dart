import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';

class HotelMainView extends StatelessWidget {
  const HotelMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return HotelMainViewBody();
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
              backgroundColor: AppColor.white,
            ),
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
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Padding(
                padding: EdgeInsets.only(top: 200.h),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 226, 226),
                      borderRadius: BorderRadius.circular(24)),
                  height: 200.h,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sanstefano',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s8.r),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/imge.jpg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              SizedBox(
                                height: 80.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sina - Egypt',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(fontSize: 16),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_city),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text('location',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .copyWith(fontSize: 16.sp)),
                                        // IconButton(
                                        //     onPressed: () {},
                                        //     icon: const Icon(
                                        //       Icons.arrow_forward_ios,
                                        //     ))
                                      ],
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green,
                                          ),
                                          width: 30.w,
                                          height: 20.h,
                                          child: Center(
                                            child: Text('9.4',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text('Exceptional',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .copyWith(fontSize: 16))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Spacer(),
                            Text(
                              "5251\$",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontSize: 20.sp),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
