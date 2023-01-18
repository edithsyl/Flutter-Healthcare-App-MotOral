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
          date: '18 Jan, 2023',
          title: 'What is MotOral?',
          author: 'MotOral Team',
          category: 'MotOral',
          content:
              'MotOral is a mobile application that assists speech therapists in providing preventive measures for those with or at risk of swallowing disorders. Get to know more about us from the webpages below: \nCUHK PI Centre - https://www.picentre.cuhk.edu.hk/#!porfolio-item/883 \nHKU Innovation Academy - https://innoacademy.engg.hku.hk/motoral/\nSIE Fund - https://www.sie.gov.hk/en/our-work/funded-ventures/detail.page?content=22991',
          image: 'test',
        ),
        News(
          id: 'n2',
          date: '22 August, 2022',
          title:
              'Want to learn more about swallowing disorders?\n[Extracted from ASHA webpage https://www.asha.org/public/speech/swallowing/swallowing-disorders-in-adults/]',
          author: 'Natalie C',
          category: 'Learning',
          content:
              'About Swallowing Disorders\nThink about how you eat. First you have to get the food or drink to your mouth. You may use a fork, spoon, straw, or your hands. Next, you have to open your mouth and put the food in. You close your lips to keep the food in your mouth. Then, you chew the food or move the liquid to get ready to swallow. We all have problems swallowing sometimes. We may have trouble chewing a tough piece of meat. We may gag on food or have to swallow hard to get it down. And we have all had a drink “go down the wrong way,” making us cough and choke. A person with a swallowing disorder will have trouble like this a lot of the time. A swallowing disorder is also called dysphagia (dis-FAY-juh).\nSwallowing happens in three stages, or phases. You can have a problem in one or more of these phases.They include:\n* Oral phase (mouth) – sucking, chewing, and moving food or liquid into the throat.\n* Pharyngeal phase (throat) – starting the swallow and squeezing food down the throat. You need to close off your airway to keep food or liquid out. Food going into the airway can cause coughing and choking.\n* Esophageal phase – opening and closing the esophagus (the tube that goes from the back of your throat to your stomach). The esophagus squeezes food down to the stomach. Food can get stuck in the esophagus. You may also throw up a lot if there is a problem with your esophagus or if you have acid reflux (commonly known as indigestion or heartburn).',
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
