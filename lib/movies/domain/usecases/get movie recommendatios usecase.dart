import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entites/recommendations.dart';
import '../repository/base movie repository.dart';

class GetMovieRecommendationsUseCase {
  BaseMovieRepository baseMovieRepository;

  GetMovieRecommendationsUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<MovieRecommendations>>> execute(
      String movieId) async {
    return await baseMovieRepository.getMovieRecommendations(movieId);
  }
}
