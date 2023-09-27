import 'package:moviemagnet/movies/domain/entites/detailed%20movie.dart';

import '../../../data/models/movie model.dart';

abstract class NowPlayingState {}

class NowPlayingInitialState extends NowPlayingState {}

class NowPlayingLoadingState extends NowPlayingState {}

class NowPlayingFailureState extends NowPlayingState {
  final String errorMessage;
  NowPlayingFailureState({required this.errorMessage});
}

class NowPlayingSuccessState extends NowPlayingState {
  final List<MovieModel> movies;

  NowPlayingSuccessState({
    required this.movies,

  });
}
