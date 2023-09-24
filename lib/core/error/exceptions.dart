
import 'package:moviemagnet/core/error/error%20model.dart';

class ServerException implements Exception{
  final ErrorModel errorModel;
  ServerException(this.errorModel);
}

class LocalException implements Exception{
  final String message;
  LocalException(this.message);
}