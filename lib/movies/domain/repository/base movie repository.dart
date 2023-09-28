import 'package:dartz/dartz.dart';
import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';
import 'package:moviemagnet/movies/domain/entites/movie.dart';

import '../../../core/error/failures.dart';
import '../../data/models/movie model.dart';

abstract class BaseMovieRepository{
    Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
    Future<Either<Failure, List<Movie>>> getPopularMovies();
    Future<Either<Failure, List<Movie>>> getTopRatedMovies();
    Future<Either<Failure, List<Movie>>> getUpComingMovies();
    Future<Either<Failure, MovieDetails>> getMovieDetails(String movieId);
    
}