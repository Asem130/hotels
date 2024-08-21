import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/discover_listview.dart';
import 'package:hotels/screens/widgets/home/home_carousal_slider.dart';
import 'package:hotels/screens/widgets/home/home_search.dart';
import 'package:hotels/screens/widgets/home/popular_hotels_listview.dart';

class HomeViewBody extends GetView<HomeControllerImp> {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        const SliverToBoxAdapter(child: HomeCarouselSlider()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              Text(
                'Most Popular',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColor.seconPrimary,
                    ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: AppColor.seconPrimary,
                onPressed: () {},
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10.h,
          ),
        ),
        const SliverToBoxAdapter(child: PopularHotelsListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Discover',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.primaryBold,
                ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15.h,
          ),
        ),
        const SliverToBoxAdapter(child: DiscoverListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15.h,
          ),
        ),
        const SliverToBoxAdapter(child: DiscoverListView()),
      ],
    );
  }
}

Widget buildSliverAppBar() {
  return SliverAppBar(
    expandedHeight: 150.h,
    pinned: true,
    stretch: false,
    backgroundColor: AppColor.white,
    flexibleSpace: FlexibleSpaceBar(
      expandedTitleScale: 1.2,
      background: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: SvgPicture.asset('assets/images/AppBar-removebg-preview.svg'),
      ),
      centerTitle: true,
      title: const HomeSearch(),
    ),
  );
}
