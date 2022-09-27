class Exercise {
  /// Creates a [Exercise].
  Exercise({
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
