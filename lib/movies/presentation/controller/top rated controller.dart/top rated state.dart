import '../../../data/models/movie model.dart';
import '../../../domain/entites/movie.dart';

abstract class TopRatedState {}

class TopRatedInitialState extends TopRatedState {}

class TopRatedLoadingState extends TopRatedState {}

class TopRatedFailureState extends TopRatedState {
  final String errorMessage;
  TopRatedFailureState({required this.errorMessage});
}

class TopRatedSuccessState extends TopRatedState {
  final List<Movie> movies;

  TopRatedSuccessState({
    required this.movies,
  });
}
