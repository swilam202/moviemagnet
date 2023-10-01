import 'genres.dart';

class MovieDetails {
  final int id;
  final String title;
  final num voteAverage;
  final String? backdropPath;
  final String overview;
  final String releaseDate;
  final num runtime;
  final List<Genres> genres;

  const MovieDetails({
    required this.genres,
    required this.id,
    required this.backdropPath,
    required this.overview,
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
          genres == other.genres &&
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
      genres.hashCode ^
      runtime.hashCode ^
      backdropPath.hashCode ^
      releaseDate.hashCode ^
      overview.hashCode;
}
