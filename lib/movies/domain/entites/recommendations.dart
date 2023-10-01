class MovieRecommendations {
  final int id;
  final String? image;

  const MovieRecommendations({
    required this.id,
    required this.image,
  });

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      other is MovieRecommendations && id == other.id && image == other.image;

  @override
  get hashCode => id.hashCode ^ image.hashCode;
}
