import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entites/movie details.dart';
import '../../../domain/usecases/get movie details usecase.dart';
import 'movie details state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(this.getMovieDetailsUseCase)
      : super(MovieDetailsInitialState());
  GetMovieDetailsUseCase getMovieDetailsUseCase;

  getMovie(int id) async {
    emit(MovieDetailsLoadingState());
    Either<Failure, MovieDetails> details =
        await getMovieDetailsUseCase.execute(id.toString());

    details.fold((l) {
      emit(MovieDetailsFailureState(errorMessage: l.message));
    }, (r) {
      emit(MovieDetailsSuccessState(movie: r));
    });
  }
}
