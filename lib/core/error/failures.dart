abstract class Failure {
  final String message;
  Failure(this.message);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Failure && message == other.message;

  @override
  int get hashCode => message.hashCode;
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class LocalFailure extends Failure {
  LocalFailure(super.message);
}
