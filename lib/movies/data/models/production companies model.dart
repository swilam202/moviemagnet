import 'package:moviemagnet/movies/domain/entites/production%20companies.dart';

class ProductionCompainesModel extends ProductionCompaines{
  ProductionCompainesModel({required super.id, required super.logoPath, required super.name,});
  factory ProductionCompainesModel.fromJson(Map<String, dynamic> json) {
    return ProductionCompainesModel(
      id: json['id'],
      logoPath: json['logo_path'],
      name: json['name'],
    );
  }
}