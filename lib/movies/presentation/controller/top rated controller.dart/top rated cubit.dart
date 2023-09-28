import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20top%20rated%20movies.dart';
import 'package:moviemagnet/movies/presentation/controller/top%20rated%20controller.dart/top%20rated%20state.dart';

import '../../../../core/error/failures.dart';
import '../../../data/models/movie model.dart';
import '../../../domain/entites/movie.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  TopRatedCubit(
    this.getTopRatedMoviesUseCase,
  ) : super(TopRatedInitialState());

  getMovies() async {
    emit(TopRatedLoadingState());
    Either<Failure, List<Movie>> nowPlaying =
        await getTopRatedMoviesUseCase.excute();

    nowPlaying.fold((l) {
      emit(TopRatedFailureState(errorMessage: l.message));
    }, (r) {
      emit(TopRatedSuccessState(movies: r));
    });
  }
}
