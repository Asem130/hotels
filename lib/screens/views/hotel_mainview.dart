import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/controller/home_controller.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';
import 'package:hotels/screens/widgets/home/hotel/floating_contanier.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_item.dart';

class HotelMainView extends StatelessWidget {
  const HotelMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const HotelMainViewBody(),
    );
  }
}

class HotelMainViewBody extends StatefulWidget {
  const HotelMainViewBody({super.key});

  @override
  State<HotelMainViewBody> createState() => _HotelMainViewBodyState();
}

class _HotelMainViewBodyState extends State<HotelMainViewBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    late TabController _tabController;
    _tabController = TabController(length: 3, vsync: this);
    return GetBuilder<HomeControllerImp>(
      init: HomeControllerImp(),
      builder: (controller) {
        return CustomScrollView(slivers: [
          const Slivver(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 1500,
              child: Stack(
                children: [
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 8, left: 8, top: 110.h, bottom: 8),
                          child: Text(
                            'Popular anemitinal',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(color: AppColor.seconPrimary),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            shrinkWrap: true,
                            clipBehavior: Clip.hardEdge,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.9,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) =>
                                const PopularAnemitinalItem(),
                          ),
                        ),
                        TabBar(controller: _tabController, tabs: [
                          Tab(
                            text: 'Food',
                          ),
                          Tab(
                            text: 'Maps',
                          ),
                          Tab(
                            text: 'overview',
                          ),
                        ]),
                        Container(
                          height: 400,
                          child:
                              TabBarView(controller: _tabController, children: [
                            Text('data'),
                            Text('food'),
                            Text('ddsadsadata'),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]);
      },
    );
  }
}

class Slivver extends GetView<HomeControllerImp> {
  const Slivver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      expandedHeight: 300.h,
      pinned: true,
      stretch: true,
      backgroundColor: AppColor.primary,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        expandedTitleScale: 1,
        stretchModes: [StretchMode.blurBackground, StretchMode.fadeTitle],
        titlePadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        background: Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: CustomCrouserSlider(
            enlargeFactor: 0,
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
        ),
        centerTitle: true,
        title: const FloatingContanier(),
      ),
    );
  }
}
