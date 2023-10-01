import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/recommendations.dart';
import '../../../domain/usecases/get movie recommendatios usecase.dart';
import 'recommendations state.dart';

class RecommendationsCubit extends Cubit<RecommendationsState> {
  GetMovieRecommendationsUseCase getMovieRecommendations;

  RecommendationsCubit(
    this.getMovieRecommendations,
  ) : super(RecommendationsInitialState());

  getMovies(String movieId) async {
    emit(RecommendationsLoadingState());
    Either<Failure, List<MovieRecommendations>> recommendations =
        await getMovieRecommendations.execute(movieId);

    recommendations.fold((l) {
      emit(RecommendationsFailureState(errorMessage: l.message));
    }, (r) {
      emit(RecommendationsSuccessState(movies: r));
    });
  }
}
