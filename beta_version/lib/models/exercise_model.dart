import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Exercise extends Equatable {
  final String name;
  final String category;
  final String description;
  final String image;
  final double duration;
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
