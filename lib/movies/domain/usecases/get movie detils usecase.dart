import 'package:dartz/dartz.dart';
import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';

import '../../../core/error/failures.dart';

class GetMovieDetailsUseCasw {
  BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCasw(this.baseMovieRepository);
  Future<Either<Failure, MovieDetails>> excute(  String movieId) async {
    return await baseMovieRepository.getMovieDetails(movieId);
  }
}
