class AbstractedMovie {
  final int id;
  final String backdropPath;

  AbstractedMovie({
    required this.id,
    required this.backdropPath,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbstractedMovie &&
          id == other.id &&
          backdropPath == other.backdropPath;

  @override
  int get hashCode => id.hashCode ^ backdropPath.hashCode;
}
