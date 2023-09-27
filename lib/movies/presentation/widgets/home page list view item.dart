import 'package:flutter/material.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';

class HomePageListViewItem extends StatelessWidget {
  const HomePageListViewItem({super.key,required this.movie,});

  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
            ),
            fit: BoxFit.fill,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(movie.title),
      ),
      
    );
  }
}
