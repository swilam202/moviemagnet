import 'package:moviemagnet/movies/domain/entites/detailed%20movie.dart';

abstract class HomePageState {}

class HomePageInitialState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageFailureState extends HomePageState {
  final String errorMessage;
  HomePageFailureState({required this.errorMessage});
}

class HomePageSuccessState extends HomePageState {
  final List<Movie> nowPlayingMovies;
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;
  HomePageSuccessState({
    required this.nowPlayingMovies,
    required this.popularMovies,
    required this.topRatedMovies,
  });
}
