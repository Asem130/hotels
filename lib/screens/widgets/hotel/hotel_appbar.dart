import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/resturant/hotel_mainview_category_list.dart';

class CustomHotelAppBar extends StatelessWidget {
  const CustomHotelAppBar(
      {this.actions,
      this.backgroundColor,
      this.background,
      super.key,
      this.leading,
      this.expandedHeight});
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? background;
  final Widget? leading;
  final double? expandedHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: actions,
      elevation: 100,
      leading: leading,
      centerTitle: true,
      floating: false,
      expandedHeight: expandedHeight,
      pinned: true,
      stretch: true,
      backgroundColor: backgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        expandedTitleScale: 1,
        stretchModes: const [StretchMode.blurBackground, StretchMode.fadeTitle],
        titlePadding: const EdgeInsets.only(
          bottom: 0,
        ),
        background: background,
        centerTitle: true,
      ),
    );
  }
}
