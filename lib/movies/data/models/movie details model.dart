import '../../domain/entites/movie details.dart';
import 'generes model.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.id,
    required super.backdropPath,
    required super.overview,
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
      genres: List.from(
        (json['genres'] as List).map(
          (e) => GenresModel.fromJson(e),
        ),
      ),
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}
