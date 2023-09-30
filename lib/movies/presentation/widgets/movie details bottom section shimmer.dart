import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieDetailsBottomSectionShimmer extends StatelessWidget {
  const MovieDetailsBottomSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 6 / 8,
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[800]!,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        },
      ),
    );
  }
}
