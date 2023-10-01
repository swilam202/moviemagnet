import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/movie.dart';
import '../../../domain/usecases/get now playing movies usecase.dart';
import 'now playing state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  NowPlayingCubit(
    this.getNowPlayingMoviesUseCase,
  ) : super(NowPlayingInitialState());

  getMovies() async {
    emit(NowPlayingLoadingState());
    Either<Failure, List<Movie>> nowPlaying =
        await getNowPlayingMoviesUseCase.execute();

    nowPlaying.fold((l) {
      emit(NowPlayingFailureState(errorMessage: l.message));
    }, (r) {
      emit(NowPlayingSuccessState(movies: r));
    });
  }
}
