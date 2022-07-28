import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/screens/bottomnav/_bottomnav_pages.dart';
import 'package:flutter/material.dart';

// class t_Exercise {
//   /// Creates a [t_Exercise].
//   t_Exercise({
//     required this.id,
//     required this.name,
//     required this.category,
//     required this.description,
//     required this.image,
//     required this.duration,
//     required this.isDailyExercise,
//   });

//   /// The id of the t_exercise.
//   final String id;

//   /// The name of the t_exercise.
//   final String name;

//   /// The category of the t_exercise.
//   final String category;
//   final String description;
//   final String image;
//   final String duration;
//   final bool isDailyExercise;
// }

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

  /// The list of [t_Exercise]s in the BottomNavPage.
  final Widget thisPageShows;

  // /// Gets the [t_Exercise] with the given id in this BottomNavPage.
  // t_Exercise t_exercise(String eid) => exercises.singleWhere(
  //       (t_Exercise e) => e.id == eid,
  //       orElse: () =>
  //           throw Exception('unknown t_exercise $eid for t_category $id'),
  //     );
}

/// The mock of bottomnav data.
class BottomNavPages {
  BottomNavPages._();

  /// The data.
  static final List<BottomNavPage> data = <BottomNavPage>[
    BottomNavPage(
      id: 'b1',
      name: 'news',
      thisIcon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Icon(Icons.apps),
      ),
      thisPageShows: NewsPage(),
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
      thisPageShows: PeoplePage(),
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

  /// Looks up a t_category in the data.
  static BottomNavPage bottomNavPage(String bid) => data.bottomNavPage(bid);
}

extension on List<BottomNavPage> {
  BottomNavPage bottomNavPage(String cid) => singleWhere(
        (BottomNavPage c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}

/// t_Category data class.

/// The person screen.

