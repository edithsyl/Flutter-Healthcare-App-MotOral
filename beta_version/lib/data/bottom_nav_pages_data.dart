import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/screens/bottomnav/_bottomnav_pages.dart';
import 'package:beta_version/screens/bottomnav/news2_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage {
  /// Creates a [BottomNavPage].
  BottomNavPage({
    required this.id,
    required this.name,
    required this.thisIcon,
    required this.thisPageShows,
  });

  /// The id of the BottomNavPage.
  final String id;

  /// The name of the BottomNavPage.
  final String name;
  final Widget thisIcon;

  /// The things shown in that specific BottomNavPage.
  final Widget thisPageShows;
}

/// Bottomnav [data]
class BottomNavPages {
  BottomNavPages._();

  /// The data.
  static final List<BottomNavPage> data = <BottomNavPage>[
    BottomNavPage(
      id: 'b1',
      name: 'news',
      thisIcon: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(Icons.apps),
      ),
      thisPageShows: News2Page(),
    ),
    BottomNavPage(
      id: 'b2',
      name: 'exercise',
      thisIcon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(CustomIcons.exercise),
      ),
      thisPageShows: ExercisePage(),
    ),
    BottomNavPage(
      id: 'b3',
      name: 'home',
      thisIcon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(CustomIcons.home),
      ),
      thisPageShows: HomePage(),
    ),
    BottomNavPage(
      id: 'b4',
      name: 'people',
      thisIcon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(CustomIcons.people),
      ),
      thisPageShows: PeoplePage2(),
    ),
    BottomNavPage(
      id: 'b5',
      name: 'profile',
      thisIcon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(CustomIcons.profile),
      ),
      thisPageShows: ProfilePage(),
    ),
  ];

  /// Looks up a [BottomNavPage] in the data with [id]
  static BottomNavPage bottomNavPage(String bid) => data.bottomNavPage(bid);
}

extension on List<BottomNavPage> {
  BottomNavPage bottomNavPage(String bid) => singleWhere(
        (b) => b.id == bid,
        orElse: () => throw Exception('unknown category $bid'),
      );
}
