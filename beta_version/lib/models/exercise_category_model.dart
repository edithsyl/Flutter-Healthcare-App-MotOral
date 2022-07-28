import 'package:beta_version/models/exercise_model.dart';

class ExerciseCategory {
  /// Creates a [ExerciseCategory].
  ExerciseCategory(
      {required this.id, required this.name, required this.exercises});

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
