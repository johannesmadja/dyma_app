class City {
  final String name;
  final String? description;
  final String imageUrl;
  bool isFavorite = false;

  City({
    required this.name,
    this.description,
    required this.imageUrl,
    required this.isFavorite,
  });
}
