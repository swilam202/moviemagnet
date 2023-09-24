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
}

class MovieReomteDataSource extends BaseMovieReomteDataSource {
  Dio dio = Dio();
  @override
  Future< List<MovieModel>> getNowPlayingMovies() async {
    Response response = await dio.get(APIConstants.nowPlayingMoviesLink);
    List<MovieModel> movies = response.data['results']
        .map((element) => MovieModel.fromJson(element))
        .toList();
    if (response.statusCode == 200) {
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
Response response = await dio.get(APIConstants.popularMoviesLink);
    List<MovieModel> movies = response.data['results']
        .map((element) => MovieModel.fromJson(element))
        .toList();
    if (response.statusCode == 200) {
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
   Response response = await dio.get(APIConstants.topRatedMoviesLink);
    List<MovieModel> movies = response.data['results']
        .map((element) => MovieModel.fromJson(element))
        .toList();
    if (response.statusCode == 200) {
      return movies;
    } else {
      throw ServerException(response.data);
    }
  }
}
