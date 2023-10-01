import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/movie.dart';
import '../../../domain/usecases/get popular movies usecase.dart';
import 'popular state.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit(this.popularMoviesUseCase) : super(PopularInitialState());
  GetPopularMoviesUseCase popularMoviesUseCase;

  getMovies() async {
    emit(PopularLoadingState());
    Either<Failure, List<Movie>> popular = await popularMoviesUseCase.execute();

    popular.fold((l) {
      emit(PopularFailureState(errorMessage: l.message));
    }, (r) {
      emit(PopularSuccessState(movies: r));
    });
  }
}
