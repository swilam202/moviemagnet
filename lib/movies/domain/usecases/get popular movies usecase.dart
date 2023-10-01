import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetPopularMoviesUseCase {
  BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
