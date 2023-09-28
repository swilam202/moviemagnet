import '../../../data/models/movie model.dart';

abstract class UpComingState{}

class UpComingInitialState extends UpComingState{}
class UpComingLoadingState extends UpComingState{}
class UpComingFailureState extends UpComingState{
  String errorMessage;
  UpComingFailureState({required this.errorMessage});
}
class UpComingSuccessState extends UpComingState{
  List <MovieModel> movies;
  UpComingSuccessState({required this.movies});
}