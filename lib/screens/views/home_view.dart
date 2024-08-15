import 'package:flutter/material.dart';

import 'package:hotels/core/constants/resources/color_manger.dart';

import 'package:hotels/screens/widgets/home/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: HomeViewBody(),
        ));
  }
}
