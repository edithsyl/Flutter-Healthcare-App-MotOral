import 'package:beta_version/models/exercise_models.dart';

class ExerciseCategories {
  ExerciseCategories._();

  /// The data.
  static final List<ExerciseCategory> data = <ExerciseCategory>[
    ExerciseCategory(
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
    ExerciseCategory(
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
    ExerciseCategory(
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
    ExerciseCategory(
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
  static ExerciseCategory category(String cid) => data.category(cid);
}

extension on List<ExerciseCategory> {
  ExerciseCategory category(String cid) => singleWhere(
        (c) => c.id == cid,
        orElse: () => throw Exception('unknown t_category $cid'),
      );
}
