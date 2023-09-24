
import 'package:moviemagnet/movies/domain/entites/movie.dart';

class MovieModel extends Movie {
  MovieModel({
    required super.id,
    required super.backdropPath,
    required super.ganderIds,
    required super.overview,
    required super.title,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String,dynamic> json) {
    return MovieModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      ganderIds: json['genre_ids'],
      overview: json['overview'],
      title: json['title'],
      voteAverage: json['vote_average'],
      releaseDate: json['release_date'],
    );
  }
}
