import '../../domain/entites/genres.dart';

class GenresModel extends Genres {
  GenresModel({required super.name});

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(name: json['name']);
  }
}
