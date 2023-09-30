import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviemagnet/core/services/service%20locator.dart';
import 'package:moviemagnet/movies/presentation/controller/movie%20details%20controller/movie%20details%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/recommendations%20controller/recommendations%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/top%20rated%20controller.dart/top%20rated%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/up%20coming%20controller/up%20coming%20cubit.dart';

import 'movies/data/data source/movie remote data source.dart';
import 'movies/data/repository/movies repository.dart';
import 'movies/domain/repository/base movie repository.dart';
import 'movies/domain/usecases/get now playing movies usecase.dart';
import 'movies/presentation/controller/now playing controller/now playing cubit.dart';
import 'movies/presentation/pages/home page.dart';
import 'movies/presentation/pages/splash page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLacator().setup();
  runApp(const MovieMagnet());
}

class MovieMagnet extends StatelessWidget {
  const MovieMagnet({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>sl<NowPlayingCubit>()),
        BlocProvider(create: (context)=>sl<PopularCubit>()),
        BlocProvider(create: (context)=>sl<TopRatedCubit>()),
        BlocProvider(create: (context)=>sl<UpComingCubit>()),
        BlocProvider(create: (context)=>sl<MovieDetailsCubit>()),
        BlocProvider(create: (context)=>sl<RecommendationsCubit>()),
      ],
    child: MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(96, 72, 71, 71),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: const HomePage(),
    ),
    );
     }
}



