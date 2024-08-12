import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hotels"),
          centerTitle: true,
        ),
        body: HomeViewBody());
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        aspectRatio: 9 / 16,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) => () {},
        scrollDirection: Axis.vertical,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
