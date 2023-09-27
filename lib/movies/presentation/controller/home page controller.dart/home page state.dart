import 'package:moviemagnet/movies/domain/entites/detailed%20movie.dart';

import '../../../data/models/movie model.dart';

abstract class HomePageState {}

class HomePageInitialState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageFailureState extends HomePageState {
  final String errorMessage;
  HomePageFailureState({required this.errorMessage});
}

class HomePageSuccessState extends HomePageState {
  final List<MovieModel> nowPlayingMovies;

  HomePageSuccessState({
    required this.nowPlayingMovies,

  });
}
