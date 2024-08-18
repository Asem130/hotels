import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';

class FloatingContanier extends StatelessWidget {
  const FloatingContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Padding(
        padding: EdgeInsets.only(top: 200.h),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
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
                          borderRadius: BorderRadius.circular(AppSize.s8.r),
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
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                    ))
                              ],
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
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
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text('Exceptional',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(fontSize: 16.sp))
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
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chat,
                          color: AppColor.seconPrimary,
                        )),
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
    );
  }
}
