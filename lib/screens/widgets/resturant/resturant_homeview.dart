import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/screens/widgets/home/crousal_slider.dart';
import 'package:hotels/screens/widgets/hotel/hotel_appbar.dart';
import 'package:hotels/screens/widgets/resturant/hotel_mainview_category_list.dart';
import 'package:hotels/screens/widgets/resturant/menue_item.dart';
import 'package:hotels/screens/widgets/resturant/resturant_home_bottom_naviagation_bar.dart';

class ResturantHomeView extends StatelessWidget {
  const ResturantHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: ResturantHomeBottomNaviagationBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ResturantHomeViewBody(),
      ),
    );
  }
}

class ResturantHomeViewBody extends StatelessWidget {
  const ResturantHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHotelAppBar(
          expandedHeight: 100,
          background: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                width: MediaQuery.of(context).size.width,
                height: 100.h,
                'assets/images/chef.jpg',
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10.h,
          ),
        ),
        const SliverToBoxAdapter(child: HotelMainviewCategoryList()),
        SliverToBoxAdapter(
          child: CustomCrouserSlider(
            items: const [MealItem()],
            scrollDirection: Axis.horizontal,
            height: MediaQuery.of(context).size.height / 2,
            enlargeFactor: 0.3,
            viewportFraction: 0.7,
          ),
        ),
      ],
    );
  }
}
