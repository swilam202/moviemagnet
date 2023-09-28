import 'package:dartz/dartz.dart';
import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';

import '../../../core/error/failures.dart';
import '../../data/models/movie model.dart';

abstract class BaseMovieRepository{
    Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies();
    Future<Either<Failure, List<MovieModel>>> getPopularMovies();
    Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
    Future<Either<Failure, List<MovieModel>>> getUpComingMovies();
    Future<Either<Failure, MovieDetails>> getMovieDetails(String movieId);
    
}