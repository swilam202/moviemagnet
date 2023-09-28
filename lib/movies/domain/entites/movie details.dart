import 'package:moviemagnet/movies/domain/entites/production%20companies.dart';

class MovieDetails {
  final int id;
  final String title;
  final num voteAverage;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final num runtime;
  final List<ProductionCompaines> productionCompaines;

  MovieDetails({
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.productionCompaines,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) {
    return MovieDetails(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      productionCompaines: List.from((json['production_companies'] as List).map((e) => ProductionCompaines.fromJson(e))),
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}
