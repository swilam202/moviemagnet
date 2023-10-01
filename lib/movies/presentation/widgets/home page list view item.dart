import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/network/api constants.dart';
import '../../domain/entites/movie.dart';
import '../pages/movie details page.dart';

class HomePageListViewItem extends StatelessWidget {
  const HomePageListViewItem({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MovieDetailsPage(id: movie.id)));
      },
      child: AspectRatio(
        aspectRatio: 6 / 8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                APIConstants.getImageLink(movie.backdropPath),
                errorListener: (p0) => const Icon(Icons.error),
              ),
              fit: BoxFit.fill,
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: GoogleFonts.actor(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
