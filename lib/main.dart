import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/service locator.dart';
import 'movies/presentation/controller/movie details controller/movie details cubit.dart';
import 'movies/presentation/controller/now playing controller/now playing cubit.dart';
import 'movies/presentation/controller/popular controller/popular cubit.dart';
import 'movies/presentation/controller/recommendations controller/recommendations cubit.dart';
import 'movies/presentation/controller/top rated controller.dart/top rated cubit.dart';
import 'movies/presentation/controller/up coming controller/up coming cubit.dart';
import 'movies/presentation/pages/splash page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().setup();
  runApp(const MovieMagnet());
}

class MovieMagnet extends StatelessWidget {
  const MovieMagnet({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<NowPlayingCubit>()),
        BlocProvider(create: (context) => sl<PopularCubit>()),
        BlocProvider(create: (context) => sl<TopRatedCubit>()),
        BlocProvider(create: (context) => sl<UpComingCubit>()),
        BlocProvider(create: (context) => sl<MovieDetailsCubit>()),
        BlocProvider(create: (context) => sl<RecommendationsCubit>()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(96, 72, 71, 71),
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
