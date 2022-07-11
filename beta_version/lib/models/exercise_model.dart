import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Exercise extends Equatable {
  final String name;
  final String category;
  final String description;
  final String image;
  final String duration;
  final bool isDailyExercise;

  const Exercise({
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.duration,
    required this.isDailyExercise,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        description,
        image,
        duration,
        isDailyExercise,
      ];

  // everytime we get data from firestore, we receive snapshots from it
  // need to compare data from firebase with instance in category class
  static Exercise fromSnapshot(DocumentSnapshot snap) {
    Exercise exercise = Exercise(
      name: snap['title'],
      category: snap['category'],
      description: snap['description'],
      image: snap['image'],
      duration: snap['duration'],
      isDailyExercise: snap['isDailyExercise'],
    );
    return exercise;
  }
}

class Exercises {
  const Exercises({
    required this.list,
  });

  final List<Exercise> list;

  factory Exercises.all() => const Exercises(
        list: <Exercise>[
          Exercise(
            name: 'Pitch Glide',
            category: 'Cheek',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: true,
          ),
          Exercise(
            name: 'Lips Rounding',
            category: 'Cheek',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: false,
          ),
          Exercise(
            name: 'Cheek Strengthening',
            category: 'Cheek',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: true,
          ),
          Exercise(
            name: 'Say /i-u/',
            category: 'Lip',
            description: 'for exercising muscles controlling your lip',
            image: 'assets/images/thinking.png',
            duration: '3',
            isDailyExercise: true,
          ),
          Exercise(
            name: 'Jaw Range of Movement',
            category: 'Jaw',
            description: 'for exercising your jaw',
            image: 'assets/images/thinking.png',
            duration: '2',
            isDailyExercise: false,
          ),
          Exercise(
            name: 'Tongue Elevation',
            category: 'Tongue',
            description: 'strengthen your tongue muscles',
            image: 'assets/images/thinking.png',
            duration: '2',
            isDailyExercise: false,
          ),
          Exercise(
            name: 'Tongue Lateral Movement',
            category: 'Tongue',
            description: 'strengthen your tongue muscles',
            image: 'assets/images/thinking.png',
            duration: '1',
            isDailyExercise: false,
          ),
        ],
      );

  factory Exercises.cheek() => const Exercises(
        list: <Exercise>[
          Exercise(
            name: 'Pitch Glide',
            category: 'Cheek',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: true,
          ),
          Exercise(
            name: 'Lips Rounding',
            category: 'Lip',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: false,
          ),
          Exercise(
            name: 'Cheek Strengthening',
            category: 'Cheek',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: true,
          ),
        ],
      );

  factory Exercises.jaw() => const Exercises(
        list: <Exercise>[
          Exercise(
            name: 'Jaw Range of Movement',
            category: 'Jaw',
            description: 'for exercising your jaw',
            image: 'assets/images/thinking.png',
            duration: '2',
            isDailyExercise: false,
          ),
        ],
      );

  factory Exercises.lip() => const Exercises(
        list: <Exercise>[
          Exercise(
            name: 'Lips Rounding',
            category: 'Lip',
            description: 'strengthen the muscles of the cheek',
            image: 'assets/images/thinking.png',
            duration: '4',
            isDailyExercise: false,
          ),
        ],
      );

  factory Exercises.tongue() => const Exercises(
        list: <Exercise>[
          Exercise(
            name: 'Tongue Elevation',
            category: 'Tongue',
            description: 'strengthen your tongue muscles',
            image: 'assets/images/thinking.png',
            duration: '2',
            isDailyExercise: false,
          ),
          Exercise(
            name: 'Tongue Lateral Movement',
            category: 'Tongue',
            description: 'strengthen your tongue muscles',
            image: 'assets/images/thinking.png',
            duration: '1',
            isDailyExercise: false,
          ),
        ],
      );

  List<Exercise> getList() {
    return list;
  }
}
