import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20popular%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20top%20rated%20movies.dart';

import '../../../../core/error/failures.dart';
import '../../../data/models/movie model.dart';
import 'now playing state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  NowPlayingCubit(
    this.getNowPlayingMoviesUseCase,
  ) : super(NowPlayingInitialState());

  getMovies() async {
    emit(NowPlayingLoadingState());
    Either<Failure, List<MovieModel>> nowPlaying =
        await getNowPlayingMoviesUseCase.excute();

    nowPlaying.fold((l) {
      emit(NowPlayingFailureState(errorMessage: l.message));
    }, (r) {
      emit(NowPlayingSuccessState(movies: r));
    });
  }
}
