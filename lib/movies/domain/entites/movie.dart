class Movie {
  final int id;
  final String title;
  final num voteAverage;
  final String? backdropPath;
  final String overview;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.backdropPath,

    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          id == other.id &&
          title == other.title &&
          voteAverage == other.voteAverage &&

          backdropPath == other.backdropPath &&
          releaseDate == other.releaseDate &&
          overview == other.overview;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      voteAverage.hashCode ^

      backdropPath.hashCode ^
      releaseDate.hashCode ^
      overview.hashCode;
}
