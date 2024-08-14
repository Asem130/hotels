import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150.h,
            width: 120.w,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 228, 228),
                borderRadius: BorderRadius.circular(AppSize.s8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75.h,
                  width: 120.w,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s8),
                        topRight: Radius.circular(AppSize.s8)),
                    child: Image.asset(
                      'assets/images/imge.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cairo',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontSize: 18, color: AppColor.black),
                      ),
                      Text('Egypt-Sina',
                          style: Theme.of(context).textTheme.bodyLarge!),
                      Text('1505\$',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.green)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
