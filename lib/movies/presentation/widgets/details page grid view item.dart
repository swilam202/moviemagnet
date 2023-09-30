import 'package:flutter/material.dart';
import 'package:moviemagnet/core/widgets/network%20images.dart';
import 'package:moviemagnet/movies/domain/entites/recommendations.dart';

import '../../../core/network/api constants.dart';
import '../pages/movie details page.dart';

class DetailsPageGridViewItem extends StatelessWidget {
  const DetailsPageGridViewItem({
    super.key,
    required this.movie,
  });
  final MovieRecommendations movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MovieDetailsPage(id: movie.id),),);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: NetworkImages(
          image: APIConstants.getImageLink(movie.image),
        ),
      ),
    );
  }
}
