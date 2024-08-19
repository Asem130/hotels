import 'package:flutter/material.dart';
import 'package:hotels/screens/widgets/home/hotel/restaurant_menu_item.dart';

class HotelRestaurant extends StatelessWidget {
  const HotelRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      shrinkWrap: true,
      clipBehavior: Clip.hardEdge,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.9,
        crossAxisSpacing: 0,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => const RestaurantMenueItem(),
    );
  }
}
