import 'package:moviemagnet/movies/data/models/generes%20model.dart';
import 'package:moviemagnet/movies/domain/entites/movie%20details.dart';

import 'production companies model.dart';

class MovieDetailsModel extends MovieDetails {
  MovieDetailsModel({
    required super.id,
    required super.backdropPath,
    required super.overview,
    //required super.productionCompaines,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
    required super.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      
      id: json['id'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      //productionCompaines: List.from((json['production_companies'] as List)
      //    .map((e) => ProductionCompainesModel.fromJson(e))),
          genres: List.from((json['genres'] as List)
          .map((e) => GeneresModel.fromJson(e))),
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}
