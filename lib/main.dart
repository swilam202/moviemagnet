import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';
import 'package:moviemagnet/movies/data/repository/movies%20repository.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';

import 'core/error/failures.dart';
import 'movies/domain/entites/detailed movie.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: ()async{
              BaseMovieReomteDataSource baseMovieReomteDataSource = MovieReomteDataSource();
              BaseMovieRepository baseMovieRepository = MovieRepository(baseMovieReomteDataSource);
              Either<Failure, List<MovieModel>> result = await GetNowPlayingMovies(baseMovieRepository).excute();

                
               
              
              
            },
            child: Text('press me'),
          ),
        ),
      ),
    );
  }
}