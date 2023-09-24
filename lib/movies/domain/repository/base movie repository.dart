import '../entites/movie.dart';

abstract class BaseMovieRepository{
    Future<List<Movie>> getNowPlayingMovies();
    Future<List<Movie>> getPopularMovies();
    Future<List<Movie>> getTopRatedMovies();
    
}