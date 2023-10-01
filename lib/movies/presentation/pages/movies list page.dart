import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/network/api constants.dart';
import '../../domain/entites/movie.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key, required this.movies, required this.title});

  final String title;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 53, 53, 53),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  child: AspectRatio(
                    aspectRatio: 5 / 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        APIConstants.getImageLink(movies[index].backdropPath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movies[index].title,
                        style: GoogleFonts.lato(fontSize: 16),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            color: Colors.red,
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              movies[index].releaseDate.split('-')[0],
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 15),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const SizedBox(width: 5),
                              Text(movies[index].voteAverage.toString()),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        movies[index].overview,
                        style: GoogleFonts.lato(fontSize: 16),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
