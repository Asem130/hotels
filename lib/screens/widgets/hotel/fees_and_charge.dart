import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:readmore/readmore.dart';

class AboutHotel extends StatelessWidget {
  const AboutHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(children: [
        Text(
          'About Sanstefano',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: ReadMoreText(
            'is a neighborhood in Alexandria, Egypt. The area was known for a landmark hotel-casino that was demolished in the late 1990s. That hotel was replaced by the San Stefano Grand Plaza, a hotel-apartment-shopping mall complex that includes a Four Seasons luxury hotel, opened in 2007[1] and apartments, housed in the tallest building in Alexandria',
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
      ]),
    );
  }
}
