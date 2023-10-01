import 'package:get_it/get_it.dart';

import '../../movies/data/data source/movie remote data source.dart';
import '../../movies/data/repository/movies repository.dart';
import '../../movies/domain/repository/base movie repository.dart';
import '../../movies/domain/usecases/get movie details usecase.dart';
import '../../movies/domain/usecases/get movie recommendatios usecase.dart';
import '../../movies/domain/usecases/get now playing movies usecase.dart';
import '../../movies/domain/usecases/get popular movies usecase.dart';
import '../../movies/domain/usecases/get top rated movies usecase.dart';
import '../../movies/domain/usecases/get upcoming movies usecase.dart';
import '../../movies/presentation/controller/movie details controller/movie details cubit.dart';
import '../../movies/presentation/controller/now playing controller/now playing cubit.dart';
import '../../movies/presentation/controller/popular controller/popular cubit.dart';
import '../../movies/presentation/controller/recommendations controller/recommendations cubit.dart';
import '../../movies/presentation/controller/top rated controller.dart/top rated cubit.dart';
import '../../movies/presentation/controller/up coming controller/up coming cubit.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void setup() {
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetUpComingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieRecommendationsUseCase(sl()));

    sl.registerFactory(() => NowPlayingCubit(sl())..getMovies());
    sl.registerFactory(() => PopularCubit(sl())..getMovies());
    sl.registerFactory(() => TopRatedCubit(sl())..getMovies());
    sl.registerFactory(() => UpComingCubit(sl())..getMovies());
    sl.registerFactory(() => MovieDetailsCubit(sl()));
    sl.registerFactory(() => RecommendationsCubit(sl()));
  }
}
