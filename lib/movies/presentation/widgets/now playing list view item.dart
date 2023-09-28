import 'package:flutter/material.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';

import '../../../core/network/api constants.dart';
import '../../domain/entites/movie.dart';

class NowPlayingListViewItem extends StatelessWidget {
  const NowPlayingListViewItem({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Image.network(
          APIConstants.getImageLink(movie.backdropPath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
