import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20movie%20detils%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/movie%20details%20controller/movie%20details%20state.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/movie.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(this.getMovieDetailsUseCase) : super(MovieDetailsInitialState());
  GetMovieDetailsUseCase getMovieDetailsUseCase;

  getMovies(int id) async {
    emit(MovieDetailsLoadingState());
    Either<Failure, MovieDetails> details =
        await getMovieDetailsUseCase.excute(id.toString());

    details.fold((l) {
      emit(MovieDetailsFailureState(errorMessage: l.message));
    }, (r) {
      emit(MovieDetailsSuccessState(movie: r));
    });
  }
}