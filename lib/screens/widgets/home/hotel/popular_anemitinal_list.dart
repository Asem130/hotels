import 'package:flutter/material.dart';
import 'package:hotels/screens/widgets/home/hotel/popular_anemitinal_item.dart';

class PopularAnemitinalList extends StatelessWidget {
  const PopularAnemitinalList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      shrinkWrap: true,
      clipBehavior: Clip.hardEdge,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.9,
        crossAxisSpacing: 0,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => const PopularAnemitinalItem(),
    );
  }
}
