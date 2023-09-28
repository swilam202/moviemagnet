
import 'package:get_it/get_it.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/repository/movies%20repository.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20popular%20movies%20usecase.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20top%20rated%20movies.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20upcoming%20movies%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/top%20rated%20controller.dart/top%20rated%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/up%20coming%20controller/up%20coming%20cubit.dart';

import '../../movies/presentation/controller/now playing controller/now playing cubit.dart';


final sl = GetIt.instance;

class ServiceLacator{
  
void setup(){ 
  
  


  sl.registerLazySingleton<BaseMovieReomteDataSource>(() => MovieReomteDataSource());
  sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));


  sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
  sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
  sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
  sl.registerLazySingleton(() => GetUpComingMoviesUseCase(sl()));

    sl.registerFactory(() => NowPlayingCubit(sl())..getMovies());
  sl.registerFactory(() => PopularCubit(sl())..getMovies());
  sl.registerFactory(() => TopRatedCubit(sl())..getMovies());
  sl.registerFactory(() => UpComingCubit(sl())..getMovies());
  
 
}

}