import 'package:dartz/dartz.dart';
import 'package:moviemagnet/core/error/failures.dart';
import 'package:moviemagnet/movies/domain/entites/recommendations.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';

class GetMovieRecommendationsUseCase{
  BaseMovieRepository baseMovieRepository;

  GetMovieRecommendationsUseCase(this.baseMovieRepository);

  Future<Either<Failure,List<MovieRecommendations>>> excute(String movieId)async{
    return await baseMovieRepository.getMovieRecommendations(movieId);
  }
}