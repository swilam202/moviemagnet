import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/entites/recommendations.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20movie%20recommendatios.dart';
import 'package:moviemagnet/movies/presentation/controller/recommendations%20controller/recommendations%20state.dart';

import '../../../../core/error/failures.dart';

class RecommendationsCubit extends Cubit<RecommendationsState> {
  GetMovieRecommendationsUseCase getMovieRecommendations;

  RecommendationsCubit(
    this.getMovieRecommendations,
  ) : super(RecommendationsInitialState());

  getMovies(String movieId) async {
    emit(RecommendationsLoadingState());
    Either<Failure, List<MovieRecommendations>> nowPlaying =
        await getMovieRecommendations.excute(movieId);

    nowPlaying.fold((l) {
      emit(RecommendationsFailureState(errorMessage: l.message));
    }, (r) {
      emit(RecommendationsSuccessState(movies: r));
    });
  }
}
