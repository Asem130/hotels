import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularAnemitinalItem extends StatelessWidget {
  const PopularAnemitinalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.restaurant),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Resturant',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
