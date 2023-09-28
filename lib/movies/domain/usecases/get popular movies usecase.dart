
import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../data/models/movie model.dart';
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetPopularMoviesUseCase{
  BaseMovieRepository baseMovieRepository;
  GetPopularMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> excute()async{
    return await baseMovieRepository.getPopularMovies();
  }
}