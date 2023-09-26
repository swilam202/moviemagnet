import 'package:flutter/material.dart';

class HomePageListViewItem extends StatelessWidget {
  const HomePageListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w500/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}
