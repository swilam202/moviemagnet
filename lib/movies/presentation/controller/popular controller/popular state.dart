import 'package:moviemagnet/movies/data/models/movie%20model.dart';

abstract class PopularState{}

class PopularInitialState extends PopularState{}
class PopularLoadingState extends PopularState{}
class PopularFailureState extends PopularState{
  String errorMessage;
  PopularFailureState({required this.errorMessage});
}
class PopularSuccessState extends PopularState{
  List <MovieModel> movies;
  PopularSuccessState({required this.movies});
}