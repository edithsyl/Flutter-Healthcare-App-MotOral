class Badge {
  /// Creates a [Badge].
  Badge({
    required this.name,
    required this.description,
    required this.image,
    required this.isCollected,
  });

  final String name;
  final String description;
  final String image;
  final bool isCollected;
}
