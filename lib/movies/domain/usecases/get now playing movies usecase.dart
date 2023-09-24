
import '../entites/movie.dart';
import '../repository/base movie repository.dart';

class GetNowPlayingMovies{
  BaseMovieRepository baseMovieRepository;
  GetNowPlayingMovies(this.baseMovieRepository);

  Future<List<Movie>> excute()async{
    return await baseMovieRepository.getNowPlayingMovies();
  }
}