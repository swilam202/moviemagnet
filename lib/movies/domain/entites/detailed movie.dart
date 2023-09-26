class DetailedMovie {
  final int id;
  final String title;
  final num voteAverage;
  final List ganderIds;
  final String backdropPath;
  final String overview;
  final String releaseDate;

  const DetailedMovie({
    required this.id,
    required this.backdropPath,
    required this.ganderIds,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailedMovie &&
          id == other.id &&
          title == other.title &&
          voteAverage == other.voteAverage &&
          ganderIds == other.ganderIds &&
          backdropPath == other.backdropPath &&
          releaseDate == other.releaseDate &&
          overview == other.overview;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      voteAverage.hashCode ^
      ganderIds.hashCode ^
      backdropPath.hashCode ^
      releaseDate.hashCode ^
      overview.hashCode;
}
