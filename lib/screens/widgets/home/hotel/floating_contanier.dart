import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';

class FloatingContanier extends StatelessWidget {
  const FloatingContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(24)),
      height: 150.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sanstefano',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
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
                    height: 40.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sina - Egypt',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_city,
                              size: 5,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'location',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 5,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
