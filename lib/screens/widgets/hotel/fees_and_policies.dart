import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:readmore/readmore.dart';

class FeesAndPolicies extends StatelessWidget {
  const FeesAndPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Text(
          'Fees & policies',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 5,
              height: 5,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Airport shuttle services is offered\n for an extra charge\nof USD 35 per vehicle. Maximum occupancy 3',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 5,
              height: 5,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Early check-in can be arranged for an extra charge\n(subkect to avalibility)',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Text('Policies', style: Theme.of(context).textTheme.headlineLarge!),
        SizedBox(
          height: 5.h,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: ReadMoreText(
            'Only registered guests are allowed in the guestrooms.\nGuests can rest easy knowing that theres a security system and a first aid kit on-site.\nThis property accepts credit cards, debit cards and cash.\nCashless transactions are available.\nA fee for a mandatory New Years Eve gala dinner is included in the total price displayed for stays on 31 December.',
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: " Show More ",
            trimExpandedText: " Show Less ",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.seconPrimary,
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.seconPrimary,
            ),
            style: const TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}
