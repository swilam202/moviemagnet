class ProductionCompaines {
  int id;
  String logoPath;
  String name;

  ProductionCompaines({
    required this.id,
    required this.logoPath,
    required this.name,
  });
  factory ProductionCompaines.fromJson(Map<String, dynamic> json) {
    return ProductionCompaines(
      id: json['id'],
      logoPath: json['logo_path'],
      name: json['name'],
    );
  }
}
