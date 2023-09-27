import '../../../data/models/movie model.dart';

abstract class TopRatedState {}

class TopRatedInitialState extends TopRatedState {}

class TopRatedLoadingState extends TopRatedState {}

class TopRatedFailureState extends TopRatedState {
  final String errorMessage;
  TopRatedFailureState({required this.errorMessage});
}

class TopRatedSuccessState extends TopRatedState {
  final List<MovieModel> movies;

  TopRatedSuccessState({
    required this.movies,
  });
}
