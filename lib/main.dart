import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/presentation/controller/home%20page%20controller.dart/home%20page%20cubit.dart';

import 'movies/data/data source/movie remote data source.dart';
import 'movies/data/repository/movies repository.dart';
import 'movies/domain/repository/base movie repository.dart';
import 'movies/domain/usecases/get now playing movies usecase.dart';
import 'movies/presentation/pages/home page.dart';
import 'movies/presentation/pages/splash page.dart';

void main() {
  runApp(const MovieMagnet());
}

class MovieMagnet extends StatelessWidget {
  const MovieMagnet({super.key});

  @override
  Widget build(BuildContext context) {
    BaseMovieReomteDataSource baseMovieReomteDataSource = MovieReomteDataSource();
    BaseMovieRepository baseMovieRepository = MovieRepository(baseMovieReomteDataSource);
    GetNowPlayingMovies getNowPlayingMovies = GetNowPlayingMovies(baseMovieRepository);
    return BlocProvider(create: (context)=>HomePageCubit(getNowPlayingMovies),
    child: MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(96, 72, 71, 71),
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    ),
    );
     }
}



