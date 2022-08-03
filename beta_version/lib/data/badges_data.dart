import 'package:beta_version/models/badge_model.dart';

/// dummy data of [Badge]
class Badges {
  Badges._();

  /// The data.
  static final List<Badge> data = <Badge>[
    Badge(
      name: 'Early Bird',
      description: 'you have use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge1.png',
      isCollected: true,
    ),
    Badge(
      name: 'Early Bird',
      description: 'you\'ve use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge2.png',
      isCollected: true,
    ),
    Badge(
      name: 'Early Bird',
      description: 'you have use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge3.png',
      isCollected: true,
    ),
    Badge(
      name: 'Early Bird',
      description: 'you\'ve use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge4.png',
      isCollected: true,
    ),
    Badge(
      name: 'Early Bird',
      description: 'you have use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge5.png',
      isCollected: true,
    ),
    Badge(
      name: 'Early Bird',
      description: 'you\'ve use this app in the morning three days in a row!',
      image: 'assets/images/badges/badge6.png',
      isCollected: true,
    ),
  ];

  /// Looks up a t_category in the data.
  static Badge id(String tname) => data.name(tname);
}

extension on List<Badge> {
  Badge name(String tname) => singleWhere(
        (c) => c.name == tname,
        orElse: () => throw Exception('unknown badge $tname'),
      );
}
