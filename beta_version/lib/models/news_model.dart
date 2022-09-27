class News {
  /// Creates a [News].
  News({
    required this.id,
    required this.date,
    required this.title,
    required this.author,
    required this.category,
    required this.content,
    required this.image,
  });

  /// The id of the News.
  final String id;
  final String date;
  final String title;
  final String author;
  final String category;
  final String content;
  final String image;
}
