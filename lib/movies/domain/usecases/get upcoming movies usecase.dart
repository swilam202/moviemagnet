

import 'package:dartz/dartz.dart';
import 'package:moviemagnet/core/error/failures.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';

class GetUpComingMoviesUseCase{
  BaseMovieRepository baseMovieRepository;
GetUpComingMoviesUseCase(this.baseMovieRepository);
Future<Either<Failure,List<MovieModel>>> excute()async{
  return await baseMovieRepository.getUpComingMovies();
}
}