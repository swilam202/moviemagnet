import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';

import 'production companies model.dart';

class MvoieDetailsModel extends MovieDetails {
  MvoieDetailsModel({
    required super.id,
    required super.backdropPath,
    required super.overview,
    required super.productionCompaines,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
  });

  factory MvoieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MvoieDetailsModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      productionCompaines: List.from((json['production_companies'] as List)
          .map((e) => ProductionCompainesModel.fromJson(e))),
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}
