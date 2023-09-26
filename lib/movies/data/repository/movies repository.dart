import 'package:dartz/dartz.dart';
import 'package:moviemagnet/core/error/exceptions.dart';
import 'package:moviemagnet/core/error/failures.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';

class MovieRepository extends BaseMovieRepository {
  BaseMovieReomteDataSource baseMovieReomteDataSource;
  MovieRepository(this.baseMovieReomteDataSource);

  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies() async {
    List<MovieModel> result =
        await baseMovieReomteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() async {
    List<MovieModel> result =
        await baseMovieReomteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() async {
    List<MovieModel> result =
        await baseMovieReomteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorModel.statusMessage));
    }
  }
}
