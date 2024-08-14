import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/values_manger.dart';
import 'package:hotels/screens/widgets/home/discover_hotelsi_item.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: AppPadding.p8),
          child: DiscoverHotelsItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
