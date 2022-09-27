import 'package:beta_version/models/news_model.dart';

class NewsCategory {
  /// Creates a [NewsCategory].
  NewsCategory(
      {required this.id, required this.name, required this.listofNews});

  /// The id of the t_category.
  final String id;

  /// The name of the t_category.
  final String name;

  /// The list of [News]s in the t_category.
  final List<News> listofNews;

  /// Gets the [News] with the given id in this t_category.
  News news(String nid) => listofNews.singleWhere(
        (News n) => n.id == nid,
        orElse: () => throw Exception('unknown News $nid for category $id'),
      );
}
