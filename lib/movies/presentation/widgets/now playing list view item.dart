import 'package:flutter/material.dart';
import 'package:moviemagnet/core/widgets/network%20images.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';

import '../../../core/network/api constants.dart';
import '../../domain/entites/movie.dart';
import '../pages/movie details page.dart';

class NowPlayingListViewItem extends StatelessWidget {
  const NowPlayingListViewItem({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MovieDetailsPage(id: movie.id)));

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: NetworkImages(image: APIConstants.getImageLink(movie.backdropPath),)
      ),
    );
  }
}
