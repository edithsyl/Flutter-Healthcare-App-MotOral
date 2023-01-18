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
        // Exercise(
        //   id: 'e1',
        //   name: 'Pitch Glide',
        //   category: 'Cheek',
        //   description: 'strengthen the muscles of the cheek',
        //   image: 'assets/images/thinking.png',
        //   duration: '4',
        //   isDailyExercise: true,
        // ),
        // Exercise(
        //   id: 'e2',
        //   name: 'Cheek Strengthening',
        //   category: 'Cheek',
        //   description: 'strengthen the muscles of the cheek',
        //   image: 'assets/images/thinking.png',
        //   duration: '4',
        //   isDailyExercise: true,
        // ),
        // Exercise(
        //   id: 'e3',
        //   name: 'Jaw Range of Movement',
        //   category: 'Jaw',
        //   description: 'for exercising your jaw',
        //   image: 'assets/images/thinking.png',
        //   duration: '2',
        //   isDailyExercise: false,
        // ),
        // Exercise(
        //   id: 'e4',
        //   name: 'Lips Rounding',
        //   category: 'Lip',
        //   description: 'strengthen the muscles of the cheek',
        //   image: 'assets/images/thinking.png',
        //   duration: '4',
        //   isDailyExercise: false,
        // ),
        // Exercise(
        //   id: 'e5',
        //   name: 'Tongue Elevation',
        //   category: 'Tongue',
        //   description: 'strengthen your tongue muscles',
        //   image: 'assets/images/thinking.png',
        //   duration: '2',
        //   isDailyExercise: false,
        // ),
        // Exercise(
        //   id: 'e6',
        //   name: 'Tongue Lateral Movement',
        //   category: 'Tongue',
        //   description: 'strengthen your tongue muscles',
        //   image: 'assets/images/thinking.png',
        //   duration: '1',
        //   isDailyExercise: false,
        // ),
      ],
    ),
    ExerciseCategory2(id: 'c1', name: 'Cheek', exercises: [
      Exercises[1],
    ]),
    ExerciseCategory2(id: 'c2', name: 'Jaw', exercises: [
      Exercises[2],
    ]),
    ExerciseCategory2(id: 'c3', name: 'Lip', exercises: [
      Exercises[0],
      Exercises[3],
    ]),
    ExerciseCategory2(id: 'c4', name: 'Tongue', exercises: [
      Exercises[4],
      Exercises[5],
    ]),
    // ExerciseCategory(
    //   id: 'c1',
    //   name: 'Cheek',
    //   exercises: <Exercise>[
    //     Exercise(
    //       id: 'e1',
    //       name: 'Pitch Glide',
    //       category: 'Cheek',
    //       description: 'strengthen the muscles of the cheek',
    //       image: 'assets/images/thinking.png',
    //       duration: '4',
    //       isDailyExercise: true,
    //     ),
    //     Exercise(
    //       id: 'e2',
    //       name: 'Cheek Strengthening',
    //       category: 'Cheek',
    //       description: 'strengthen the muscles of the cheek',
    //       image: 'assets/images/thinking.png',
    //       duration: '4',
    //       isDailyExercise: true,
    //     ),
    //   ],
    // ),
    // ExerciseCategory(
    //   id: 'c2',
    //   name: 'Jaw',
    //   exercises: <Exercise>[
    //     Exercise(
    //       id: 'e1',
    //       name: 'Jaw Range of Movement',
    //       category: 'Jaw',
    //       description: 'for exercising your jaw',
    //       image: 'assets/images/thinking.png',
    //       duration: '2',
    //       isDailyExercise: false,
    //     ),
    //   ],
    // ),
    // ExerciseCategory(
    //   id: 'c3',
    //   name: 'Lip',
    //   exercises: <Exercise>[
    //     Exercise(
    //       id: 'e1',
    //       name: 'Lips Rounding',
    //       category: 'Lip',
    //       description: 'strengthen the muscles of the cheek',
    //       image: 'assets/images/thinking.png',
    //       duration: '4',
    //       isDailyExercise: false,
    //     ),
    //   ],
    // ),
    // ExerciseCategory(
    //   id: 'c4',
    //   name: 'Tongue',
    //   exercises: <Exercise>[
    //     Exercise(
    //       id: 'e1',
    //       name: 'Tongue Elevation',
    //       category: 'Tongue',
    //       description: 'strengthen your tongue muscles',
    //       image: 'assets/images/thinking.png',
    //       duration: '2',
    //       isDailyExercise: false,
    //     ),
    //     Exercise(
    //       id: 'e2',
    //       name: 'Tongue Lateral Movement',
    //       category: 'Tongue',
    //       description: 'strengthen your tongue muscles',
    //       image: 'assets/images/thinking.png',
    //       duration: '1',
    //       isDailyExercise: false,
    //     ),
    //   ],
    // ),
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
