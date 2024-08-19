import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/home/hotel/hotel_homeview_body.dart';

class HotelHomeView extends StatelessWidget {
  const HotelHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const HotelHomeViewBody(),
    );
  }
}
