import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/discover_listview.dart';
import 'package:hotels/screens/widgets/home/home_carousal_slider.dart';
import 'package:hotels/screens/widgets/home/home_search.dart';
import 'package:hotels/screens/widgets/home/popular_hotels_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        appBar: AppBar(
          backgroundColor: AppColor.primary,
          elevation: 0,
          actions: [
            SvgPicture.asset(
              'assets/images/AppBar-removebg-preview.svg',
              height: 50.h,
              width: 50.w,
            ),
          ],
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: HomeViewBody(),
        ));
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSearch(),
        const HomeCarouselSlider(),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Most Popular',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: AppColor.primaryBold,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        PopularHotelsListView(),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Discover',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: AppColor.primaryBold,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        DiscoverListView(),
      ],
    );
  }
}
