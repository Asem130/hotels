import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantMenueItem extends StatelessWidget {
  const RestaurantMenueItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Image.asset(
            'assets/images/burger.png',
            height: 60,
            width: 60,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Sandwatches',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontFamily: 'DancingScript', fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
