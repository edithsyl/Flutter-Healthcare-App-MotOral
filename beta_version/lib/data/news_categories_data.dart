import 'package:beta_version/models/news_models.dart';

class NewsCategories {
  NewsCategories._();

  /// The data.
  static final List<NewsCategory> data = <NewsCategory>[
    NewsCategory(
      id: 'nc1',
      name: 'Learning',
      listofNews: <News>[
        News(
          id: 'n1',
          date: '10 August, 2022',
          title: 'What is: test',
          author: 'MotOral Team',
          category: 'Learning',
          content:
              'Testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
        News(
          id: 'n2',
          date: '22 August, 2022',
          title: 'Want to learn more about test?',
          author: 'Natalie C',
          category: 'Learning',
          content:
              'testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
      ],
    ),
    NewsCategory(
      id: 'nc2',
      name: 'Opinion',
      listofNews: <News>[
        News(
          id: 'n1',
          date: '22 August, 2022',
          title: 'Dear Reader: Testing',
          author: 'MotOral Team',
          category: 'Opinion',
          content:
              'testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
      ],
    ),
    NewsCategory(
      id: 'nc3',
      name: 'Tips',
      listofNews: <News>[
        News(
          id: 'n2',
          date: '22 August, 2022',
          title: '4 things to do before ___',
          author: 'Natalie C',
          category: 'Tips',
          content:
              'testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
      ],
    ),
    NewsCategory(
      id: 'nc4',
      name: 'Updates',
      listofNews: <News>[
        News(
          id: 'n1',
          date: '22 August, 2022',
          title: 'A note from MotOral',
          author: 'MotOral Team',
          category: 'Updates',
          content:
              'Testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
        News(
          id: 'n2',
          date: '22 August, 2022',
          title: 'Welcome! Come and learn more about us',
          author: 'MotOral Team',
          category: 'Updates',
          content:
              'testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing',
          image: 'test',
        ),
      ],
    ),
  ];

  /// Looks up a t_category in the data.
  static NewsCategory category(String nid) => data.category(nid);
}

extension on List<NewsCategory> {
  NewsCategory category(String nid) => singleWhere(
        (n) => n.id == nid,
        orElse: () => throw Exception('unknown news category $nid'),
      );
}
