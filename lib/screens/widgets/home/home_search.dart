import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 35.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Search for hotel',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.grey2,
                      )),
              const Spacer(),
              Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 15.w,
                color: AppColor.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
