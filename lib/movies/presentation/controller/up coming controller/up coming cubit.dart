import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../data/models/movie model.dart';
import '../../../domain/usecases/get upcoming movies usecase.dart';
import 'up coming state.dart';

class UpComingCubit extends Cubit<UpComingState> {
  UpComingCubit(this.getUpComingMoviesUseCase) : super(UpComingInitialState());
  GetUpComingMoviesUseCase getUpComingMoviesUseCase;

  getMovies() async {
    emit(UpComingLoadingState());
    Either<Failure, List<MovieModel>> upComing =
        await getUpComingMoviesUseCase.excute();

    upComing.fold((l) {
      emit(UpComingFailureState(errorMessage: l.message));
    }, (r) {
      emit(UpComingSuccessState(movies: r));
    });
  }
}
