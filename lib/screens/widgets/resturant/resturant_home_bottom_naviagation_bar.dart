import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class ResturantHomeBottomNaviagationBar extends StatelessWidget {
  const ResturantHomeBottomNaviagationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColor.white,
        boxShadow: const [BoxShadow(offset: Offset(0, 20), blurRadius: 20)],
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          width: MediaQuery.of(context).size.width,
          height: 40.h,
          decoration: BoxDecoration(
            color: AppColor.darkPrimary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Text(
                'View cart',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16.sp,
                      color: AppColor.white,
                    ),
              ),
              const Spacer(),
              Text(
                'EGP 30.00',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 16.sp,
                    color: AppColor.white,
                    fontFamily: 'DancingScript'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
