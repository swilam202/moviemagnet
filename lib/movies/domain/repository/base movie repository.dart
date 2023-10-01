import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entites/movie details.dart';
import '../entites/movie.dart';
import '../entites/recommendations.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, List<Movie>>> getUpComingMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(String movieId);

  Future<Either<Failure, List<MovieRecommendations>>> getMovieRecommendations(
      String movieId);
}
