import '../../domain/entites/generes.dart';

class GeneresModel extends Generes{
  GeneresModel({required super.name});

 factory GeneresModel.fromJson(Map<String,dynamic> json){
  return GeneresModel(name: json['name']);
 }

}