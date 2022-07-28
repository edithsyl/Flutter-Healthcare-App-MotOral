import 'package:beta_version/models/exercise_model.dart';

class Category {
  /// Creates a [Category].
  Category({required this.id, required this.name, required this.exercises});

  /// The id of the t_category.
  final String id;

  /// The name of the t_category.
  final String name;

  /// The list of [t_Exercise]s in the t_category.
  final List<Exercise> exercises;

  /// Gets the [t_Exercise] with the given id in this t_category.
  Exercise exercise(String eid) => exercises.singleWhere(
        (Exercise e) => e.id == eid,
        orElse: () =>
            throw Exception('unknown t_exercise $eid for t_category $id'),
      );
}

/// The mock of categories data.
class Categories {
  Categories._();

  /// The data.
  static final List<Category> data = <Category>[
    Category(
      id: 'c1',
      name: 'Cheek',
      exercises: <Exercise>[
        Exercise(
          id: 'e1',
          name: 'Pitch Glide',
          category: 'Cheek',
          description: 'strengthen the muscles of the cheek',
          image: 'assets/images/thinking.png',
          duration: '4',
          isDailyExercise: true,
        ),
        Exercise(
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
    Category(
      id: 'c2',
      name: 'Jaw',
      exercises: <Exercise>[
        Exercise(
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
    Category(
      id: 'c3',
      name: 'Lip',
      exercises: <Exercise>[
        Exercise(
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
    Category(
      id: 'c4',
      name: 'Tongue',
      exercises: <Exercise>[
        Exercise(
          id: 'e1',
          name: 'Tongue Elevation',
          category: 'Tongue',
          description: 'strengthen your tongue muscles',
          image: 'assets/images/thinking.png',
          duration: '2',
          isDailyExercise: false,
        ),
        Exercise(
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
  static Category category(String cid) => data.category(cid);
}

extension on List<Category> {
  Category category(String cid) => singleWhere(
        (Category c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:equatable/equatable.dart';

// class Category extends Equatable {
//   final String name;

//   const Category({
//     required this.name,
//   });
//   @override
//   List<Object?> get props => [name];

//   // everytime we get data from firestore, we receive snapshots from it
//   // need to compare data from firebase with instance in category class
//   static Category fromSnapshot(DocumentSnapshot snap) {
//     Category category = Category(name: snap['name']);
//     return category;
//   }

//   static const List<Category> allCategories = [
//     Category(
//       name: 'Cheek',
//     ),
//     Category(
//       name: 'Jaw',
//     ),
//     Category(
//       name: 'Lip',
//     ),
//     Category(
//       name: 'Tongue',
//     ),
//   ];
// }
