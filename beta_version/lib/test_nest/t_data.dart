import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/screens/bottomnav/_bottomnav_pages.dart';
import 'package:flutter/material.dart';

class t_Exercise {
  /// Creates a [t_Exercise].
  t_Exercise({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.duration,
    required this.isDailyExercise,
  });

  /// The id of the t_exercise.
  final String id;

  /// The name of the t_exercise.
  final String name;

  /// The category of the t_exercise.
  final String category;
  final String description;
  final String image;
  final String duration;
  final bool isDailyExercise;
}

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
class t_Category {
  /// Creates a [t_Category].
  t_Category({required this.id, required this.name, required this.exercises});

  /// The id of the t_category.
  final String id;

  /// The name of the t_category.
  final String name;

  /// The list of [t_Exercise]s in the t_category.
  final List<t_Exercise> exercises;

  /// Gets the [t_Exercise] with the given id in this t_category.
  t_Exercise t_exercise(String eid) => exercises.singleWhere(
        (t_Exercise e) => e.id == eid,
        orElse: () =>
            throw Exception('unknown t_exercise $eid for t_category $id'),
      );
}

/// The mock of categories data.
class t_Categories {
  t_Categories._();

  /// The data.
  static final List<t_Category> data = <t_Category>[
    t_Category(
      id: 'c1',
      name: 'Cheek',
      exercises: <t_Exercise>[
        t_Exercise(
          id: 'e1',
          name: 'Pitch Glide',
          category: 'Cheek',
          description: 'strengthen the muscles of the cheek',
          image: 'assets/images/thinking.png',
          duration: '4',
          isDailyExercise: true,
        ),
        t_Exercise(
          id: 'e2',
          name: 'Cheek Strengthening',
          category: 'Cheek',
          description: 'strengthen the muscles of the cheek',
          image: 'assets/images/thinking.png',
          duration: '4',
          isDailyExercise: true,
        ),
      ],
    ),
    t_Category(
      id: 'c2',
      name: 'Jaw',
      exercises: <t_Exercise>[
        t_Exercise(
          id: 'e1',
          name: 'Jaw Range of Movement',
          category: 'Jaw',
          description: 'for exercising your jaw',
          image: 'assets/images/thinking.png',
          duration: '2',
          isDailyExercise: false,
        ),
      ],
    ),
    t_Category(
      id: 'c3',
      name: 'Lip',
      exercises: <t_Exercise>[
        t_Exercise(
          id: 'e1',
          name: 'Lips Rounding',
          category: 'Lip',
          description: 'strengthen the muscles of the cheek',
          image: 'assets/images/thinking.png',
          duration: '4',
          isDailyExercise: false,
        ),
      ],
    ),
    t_Category(
      id: 'c4',
      name: 'Tongue',
      exercises: <t_Exercise>[
        t_Exercise(
          id: 'e1',
          name: 'Tongue Elevation',
          category: 'Tongue',
          description: 'strengthen your tongue muscles',
          image: 'assets/images/thinking.png',
          duration: '2',
          isDailyExercise: false,
        ),
        t_Exercise(
          id: 'e2',
          name: 'Tongue Lateral Movement',
          category: 'Tongue',
          description: 'strengthen your tongue muscles',
          image: 'assets/images/thinking.png',
          duration: '1',
          isDailyExercise: false,
        ),
      ],
    ),
  ];

  /// Looks up a t_category in the data.
  static t_Category t_category(String cid) => data.t_category(cid);
}

extension on List<t_Category> {
  t_Category t_category(String cid) => singleWhere(
        (t_Category c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}

/// The person screen.

