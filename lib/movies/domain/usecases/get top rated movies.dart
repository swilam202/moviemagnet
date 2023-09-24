
import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../data/models/movie model.dart';
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetTopRatedMovies{
  BaseMovieRepository baseMovieRepository;
  GetTopRatedMovies(this.baseMovieRepository);

  Future<Either<Failure, List<MovieModel>>> excute()async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}