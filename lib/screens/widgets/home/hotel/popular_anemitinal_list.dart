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
        crossAxisCount: 2,
        childAspectRatio: 2 / 0.5,
        crossAxisSpacing: 1,
        mainAxisSpacing: 0.5,
      ),
      itemBuilder: (context, index) => const PopularAnemitinalItem(),
    );
  }
}
