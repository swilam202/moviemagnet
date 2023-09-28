import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';

abstract class MovieDetailsState{}

class MovieDetailsInitialState extends MovieDetailsState{}
class MovieDetailsLoadingState extends MovieDetailsState{}
class MovieDetailsFailureState extends MovieDetailsState{
  String errorMessage;
  MovieDetailsFailureState({required this.errorMessage});
}
class MovieDetailsSuccessState extends MovieDetailsState{
  MovieDetails movie;
  MovieDetailsSuccessState({required this.movie});
}