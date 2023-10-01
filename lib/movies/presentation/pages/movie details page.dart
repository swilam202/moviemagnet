import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/movie details controller/movie details cubit.dart';
import '../controller/recommendations controller/recommendations cubit.dart';
import '../widgets/movie details bottom section.dart';
import '../widgets/movie details top section.dart';

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
    await BlocProvider.of<RecommendationsCubit>(context)
        .getMovies(widget.id.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: const [
          MovieDetailsTopSection(),
          MovieDetailsBottomSection(),
        ],
      ),
    );
  }
}
