import 'package:flutter/material.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';

import '../../domain/entites/movie.dart';
import 'home page list view item.dart';

class HomePageListView extends StatelessWidget {
  const HomePageListView({super.key,required this.movies});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
      
        itemBuilder: (context, index) {
          return  HomePageListViewItem(movie: movies[index],);
        },
      ),
    );
  }
}
