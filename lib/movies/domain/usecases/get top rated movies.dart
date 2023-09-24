
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetTopRatedMovies{
  BaseMovieRepository baseMovieRepository;
  GetTopRatedMovies(this.baseMovieRepository);

  Future<List<Movie>> excute()async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}