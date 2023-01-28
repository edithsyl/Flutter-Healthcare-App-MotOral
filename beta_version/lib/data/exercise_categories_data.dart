import 'package:beta_version/models/exercise_models.dart';

import 'exercises_data.dart';

class ExerciseCategories {
  ExerciseCategories._();

  /// The data.
  static final List<ExerciseCategory2> data = <ExerciseCategory2>[
    ExerciseCategory2(
      id: 'c0',
      name: 'All',
      exercises: [
        Exercises[0],
        Exercises[1],
        Exercises[2],
        Exercises[3],
        Exercises[4],
        Exercises[5],
      ],
    ),
    ExerciseCategory2(id: 'c1', name: 'Cheek', exercises: [
      Exercises[0],
    ]),
    ExerciseCategory2(id: 'c2', name: 'Jaw', exercises: [
      Exercises[1],
    ]),
    ExerciseCategory2(id: 'c3', name: 'Lip', exercises: [
      Exercises[2],
      Exercises[3],
    ]),
    ExerciseCategory2(id: 'c4', name: 'Tongue', exercises: [
      Exercises[4],
      Exercises[5],
    ]),
  ];

  /// Looks up a t_category in the data.
  static ExerciseCategory2 category(String cid) => data.category(cid);
}

extension on List<ExerciseCategory2> {
  ExerciseCategory2 category(String cid) => singleWhere(
        (c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}

class ExerciseCategoryTempAll {
  ExerciseCategoryTempAll._();

  /// The data.
  static final List<ExerciseCategory> data = <ExerciseCategory>[
    ExerciseCategory(
      id: 'a1',
      name: 'All Exercises',
      exercises: <Exercise>[
        Exercise(
          id: 'b1',
          name: 'All Exercises', //'Pitch Glide',
          category: 'All',
          description: 'challenge yourselves with this routine',
          image: 'assets/images/thinking.png',
          duration: '4',
          isDailyExercise: true,
        ),
      ],
    ),
  ];

  /// Looks up a t_category in the data.
  static ExerciseCategory category(String cid) => data.category(cid);
}

extension on List<ExerciseCategory> {
  ExerciseCategory category(String cid) => singleWhere(
        (c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}
