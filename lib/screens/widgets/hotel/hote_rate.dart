import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/hotel/guests_review_listview.dart';

class HotelRate extends StatelessWidget {
  const HotelRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '9.6/10',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontFamily: 'DancingScript', fontSize: 40, color: Colors.green),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Exceptional',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 30,
              color: AppColor.seconPrimary,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            Text(
              '39 verified reviews',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColor.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5.h,
            ),
            InkWell(
              onTap: () {
            
              },
              child: Icon(
                FontAwesomeIcons.circleExclamation,
                size: 10.r,
                color: AppColor.seconPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: 150.h, child: const GuestsReviewListView())
      ],
    );
  }
}
