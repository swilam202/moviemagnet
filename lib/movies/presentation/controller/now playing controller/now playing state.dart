import '../../../domain/entites/movie.dart';

abstract class NowPlayingState {}

class NowPlayingInitialState extends NowPlayingState {}

class NowPlayingLoadingState extends NowPlayingState {}

class NowPlayingFailureState extends NowPlayingState {
  final String errorMessage;

  NowPlayingFailureState({required this.errorMessage});
}

class NowPlayingSuccessState extends NowPlayingState {
  final List<Movie> movies;

  NowPlayingSuccessState({
    required this.movies,
  });
}
