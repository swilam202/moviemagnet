import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/network/api constants.dart';
import '../controller/movie details controller/movie details cubit.dart';
import '../controller/movie details controller/movie details state.dart';

class MovieDetailsTopSection extends StatelessWidget {
  const MovieDetailsTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, state) {
          if (state is MovieDetailsSuccessState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.network(
                    APIConstants.getImageLink(state.movie.backdropPath),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    state.movie.title,
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        state.movie.releaseDate.split('-')[0],
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      state.movie.voteAverage.toString(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    state.movie.overview,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Wrap(
                  children: state.movie.genres
                      .map(
                        (e) => Container(
                          color: Colors.black,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(16),
                          child: Text(e.name),
                        ),
                      )
                      .toList(),
                ),
              ],
            );
          } else if (state is MovieDetailsFailureState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
  
  }
}