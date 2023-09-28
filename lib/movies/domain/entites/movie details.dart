import 'package:moviemagnet/movies/domain/entites/production%20companies.dart';

class MovieDetails {
  final int id;
  final String title;
  final num voteAverage;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final num runtime;
  //final List<ProductionCompaines> productionCompaines;

  MovieDetails({
    required this.id,
    required this.backdropPath,
    required this.overview,
    //required this.productionCompaines,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });



  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetails &&
          id == other.id &&
          title == other.title &&
          voteAverage == other.voteAverage &&
          //productionCompaines == other.productionCompaines &&
          runtime == other.runtime &&
          backdropPath == other.backdropPath &&
          releaseDate == other.releaseDate &&
          overview == other.overview;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      voteAverage.hashCode ^
      //productionCompaines.hashCode ^
      runtime.hashCode ^
      backdropPath.hashCode ^
      releaseDate.hashCode ^
      overview.hashCode;
}
