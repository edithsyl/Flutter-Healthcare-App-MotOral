import 'package:beta_version/models/exercise_categories_enum.dart';

import 'exercise_instruction_model.dart';

class Exercise_new {
  /// Creates a [Exercise].
  Exercise_new({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.duration,
    required this.isDailyExercise,
    required this.exerciseInstruction,
  });

  /// The id of the t_exercise.
  final String id;

  /// The name of the t_exercise.
  final String name;

  /// The category of the t_exercise.
  final ExerciseCategories category;
  final String description;
  final String image;
  final String duration;
  final bool isDailyExercise;
  final ExerciseInstruction exerciseInstruction;
}
