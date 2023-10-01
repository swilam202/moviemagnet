import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entites/movie details.dart';
import '../repository/base movie repository.dart';

class GetMovieDetailsUseCase {
  BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCase(this.baseMovieRepository);

  Future<Either<Failure, MovieDetails>> execute(String movieId) async {
    return await baseMovieRepository.getMovieDetails(movieId);
  }
}
