import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../domain/entites/movie details.dart';
import '../../domain/entites/recommendations.dart';
import '../../domain/repository/base movie repository.dart';
import '../data source/movie remote data source.dart';
import '../models/movie model.dart';

class MovieRepository extends BaseMovieRepository {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies() async {
    List<MovieModel> result =
        await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() async {
    List<MovieModel> result =
        await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() async {
    List<MovieModel> result =
        await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getUpComingMovies() async {
    List<MovieModel> result =
        await baseMovieRemoteDataSource.getUpComingMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(String movieId) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(movieId);
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieRecommendations>>> getMovieRecommendations(
      String movieId) async {
    final result =
        await baseMovieRemoteDataSource.getMovieRecommendations(movieId);
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }
}
