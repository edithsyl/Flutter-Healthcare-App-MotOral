enum ExerciseCategories {
  cheek,
  jaw,
  lip,
  tongue,
}

extension ExerciseCategoriesToString on ExerciseCategories {
  String get name {
    return this.toString().split('.').last;
  }
}
