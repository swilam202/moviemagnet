import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20popular%20movies%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20state.dart';

import '../../../../core/error/failures.dart';
import '../../../data/models/movie model.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit(this.popularMoviesUseCase) : super(PopularInitialState());
  GetPopularMoviesUseCase popularMoviesUseCase;

  getMovies() async {
    emit(PopularLoadingState());
    Either<Failure, List<MovieModel>> nowPlaying =
        await popularMoviesUseCase.excute();

    nowPlaying.fold((l) {
      emit(PopularFailureState(errorMessage: l.message));
    }, (r) {
      emit(PopularSuccessState(movies: r));
    });
  }
}
