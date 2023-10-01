import '../../domain/entites/recommendations.dart';

class MovieRecommendationsModel extends MovieRecommendations {
  const MovieRecommendationsModel({
    required super.id,
    required super.image,
  });

  factory MovieRecommendationsModel.fromJson(Map<String, dynamic> json) {
    return MovieRecommendationsModel(
      id: json['id'],
      image: json['backdrop_path'],
    );
  }
}
