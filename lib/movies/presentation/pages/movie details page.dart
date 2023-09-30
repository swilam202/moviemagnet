import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/core/network/api%20constants.dart';
import 'package:moviemagnet/movies/domain/entites/recommendations.dart';
import 'package:moviemagnet/movies/presentation/controller/movie%20details%20controller/movie%20details%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/movie%20details%20controller/movie%20details%20state.dart';
import 'package:moviemagnet/movies/presentation/controller/recommendations%20controller/recommendations%20cubit.dart';
import 'package:moviemagnet/movies/presentation/widgets/details%20page%20grid%20view%20item.dart';
import 'package:moviemagnet/movies/presentation/widgets/movie%20details%20bottom%20section.dart';
import 'package:moviemagnet/movies/presentation/widgets/movie%20details%20top%20section.dart';

import '../controller/recommendations controller/recommendations state.dart';

class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage({super.key, required this.id});
  final int id;

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();
    triggerCubit();
  }

  void triggerCubit() async {
    await BlocProvider.of<MovieDetailsCubit>(context).getMovie(widget.id);
    await BlocProvider.of<RecommendationsCubit>(context).getMovies(widget.id.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        children: [
          MovieDetailsTopSection(),
          MovieDetailsBottomSection(),
        ],

      )
        );
  }
}
