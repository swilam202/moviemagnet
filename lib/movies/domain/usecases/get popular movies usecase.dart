
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetPopularMovies{
  BaseMovieRepository baseMovieRepository;
  GetPopularMovies(this.baseMovieRepository);

  Future<List<Movie>> excute()async{
    return await baseMovieRepository.getPopularMovies();
  }
}