import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/movie.dart';
import '../../../domain/usecases/get top rated movies usecase.dart';
import 'top rated state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  TopRatedCubit(
    this.getTopRatedMoviesUseCase,
  ) : super(TopRatedInitialState());

  getMovies() async {
    emit(TopRatedLoadingState());
    Either<Failure, List<Movie>> topRated =
        await getTopRatedMoviesUseCase.execute();

    topRated.fold((l) {
      emit(TopRatedFailureState(errorMessage: l.message));
    }, (r) {
      emit(TopRatedSuccessState(movies: r));
    });
  }
}
