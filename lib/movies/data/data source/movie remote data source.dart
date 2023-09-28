import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:moviemagnet/core/error/exceptions.dart';
import 'package:moviemagnet/core/error/failures.dart';
import 'package:moviemagnet/core/network/api%20constants.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';

abstract class BaseMovieReomteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<MovieModel>> getUpComingMovies();
}

class MovieReomteDataSource extends BaseMovieReomteDataSource {
  Dio dio = Dio();
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    Response response = await dio.get(APIConstants.nowPlayingMoviesLink);

    if (response.statusCode == 200) {
      List<MovieModel> movies = List.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    Response response = await dio.get(APIConstants.popularMoviesLink);

    if (response.statusCode == 200) {
      List<MovieModel> movies = List.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    Response response = await dio.get(APIConstants.topRatedMoviesLink);
    print(response.data);
    if (response.statusCode == 200) {
      List<MovieModel> movies = List.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getUpComingMovies() async {
    Response response = await dio.get(APIConstants.upComingMoviesLink);

    if (response.statusCode == 200) {
      List<MovieModel> movies =
          List.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }
}
