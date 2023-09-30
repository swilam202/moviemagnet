import 'package:moviemagnet/movies/domain/entites/recommendations.dart';

abstract class RecommendationsState {}

class RecommendationsInitialState extends RecommendationsState {}

class RecommendationsLoadingState extends RecommendationsState {}

class RecommendationsFailureState extends RecommendationsState {
  final String errorMessage;
  RecommendationsFailureState({required this.errorMessage});
}

class RecommendationsSuccessState extends RecommendationsState {
  final List<MovieRecommendations> movies;

  RecommendationsSuccessState({
    required this.movies,
  });
}