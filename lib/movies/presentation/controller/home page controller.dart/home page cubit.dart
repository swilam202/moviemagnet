import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20popular%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20top%20rated%20movies.dart';
import 'package:moviemagnet/movies/presentation/controller/home%20page%20controller.dart/home%20page%20state.dart';

import '../../../../core/error/failures.dart';
import '../../../data/models/movie model.dart';

class HomePageCubit extends Cubit<HomePageState> {
  //GetPopularMovies getPopularMovies;
  GetNowPlayingMovies getNowPlayingMovies;
  //GetTopRatedMovies getTopRatedMovies;
  HomePageCubit(
    this.getNowPlayingMovies,
    //this.getPopularMovies,
    //this.getTopRatedMovies,
  ) : super(HomePageInitialState());

  getMovie() async {

    emit(HomePageLoadingState());
    Either<Failure, List<MovieModel>> nowPlaying =
        await getNowPlayingMovies.excute();


    nowPlaying.fold((l) {
      emit(HomePageFailureState(errorMessage: l.message));
    }, (r) {
      emit(HomePageSuccessState(nowPlayingMovies: r));

    });

  }
}
