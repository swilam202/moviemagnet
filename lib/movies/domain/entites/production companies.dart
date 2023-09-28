class ProductionCompaines {
  int id;
  String logoPath;
  String name;

  ProductionCompaines({
    required this.id,
    required this.logoPath,
    required this.name,
  });



    @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompaines &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name;

  @override
  int get hashCode =>
      id.hashCode ^
      logoPath.hashCode ^
      name.hashCode ;

}
