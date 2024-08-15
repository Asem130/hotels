import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCrouserSlider extends StatelessWidget {
  const CustomCrouserSlider(
      {super.key,
      required this.items,
      required this.scrollDirection,
      required this.enlargeFactor,
      required this.viewportFraction,
      this.height});
  final List<Widget> items;
  final Axis scrollDirection;
  final double enlargeFactor;
  final double viewportFraction;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          clipBehavior: Clip.antiAlias,
          height: height,
          aspectRatio: 16 / 9,
          viewportFraction: viewportFraction,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: enlargeFactor,
          onPageChanged: (index, reason) => () {},
          scrollDirection: scrollDirection,
        ),
        items: items);
  }
}
