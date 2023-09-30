import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieDetailsTopSectionShimmer extends StatelessWidget {
  const MovieDetailsTopSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Shimmer.fromColors(
                  baseColor: Colors.grey[850]!,
                  highlightColor: Colors.grey[800]!,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
        ),


                  
                Shimmer.fromColors(
                  baseColor: Colors.grey[850]!,
                  highlightColor: Colors.grey[800]!,
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      
                    ),
                  
                ),
                ),

          Row(
            children: [
Shimmer.fromColors(
                  baseColor: Colors.grey[850]!,
                  highlightColor: Colors.grey[800]!,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      
                    ),
                  
                ),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[850]!,
                  highlightColor: Colors.grey[800]!,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      
                    ),
                  
                ),
                ),
            ],
          ),
          SizedBox(height: 20),
          Shimmer.fromColors(
                  baseColor: Colors.grey[850]!,
                  highlightColor: Colors.grey[800]!,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      
                    ),
                  
                ),
                ),
  SizedBox(height: 20),
      ],
    );
  }
}