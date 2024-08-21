import 'package:flutter/material.dart';
import 'package:hotels/screens/widgets/hotel/guests_review_item.dart';

class GuestsReviewListView extends StatelessWidget {
  const GuestsReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: const GuestsReviewItem(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
