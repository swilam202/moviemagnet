import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImages extends StatelessWidget {
  const NetworkImages({super.key, required this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl:  image ?? '',
          placeholder: (context, url) =>  Shimmer.fromColors(
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
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
  }
}