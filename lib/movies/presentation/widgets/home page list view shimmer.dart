import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePageListViewShimmer extends StatelessWidget {
  const HomePageListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[800]!,
            child: AspectRatio(
              aspectRatio: 6 / 8,
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
