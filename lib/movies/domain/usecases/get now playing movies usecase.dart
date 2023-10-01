
import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/base movie repository.dart';



class GetNowPlayingMoviesUseCase{
  BaseMovieRepository baseMovieRepository;
  GetNowPlayingMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute()async{
    return await baseMovieRepository.getNowPlayingMovies();
  }
}