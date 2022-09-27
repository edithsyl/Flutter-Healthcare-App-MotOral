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
