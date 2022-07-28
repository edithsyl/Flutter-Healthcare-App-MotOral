// import 'package:beta_version/models/exercise_model.dart';
// import 'package:beta_version/repositories/exercise/base_exercise_repository.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ExerciseRepository extends BaseExerciseRepository {
//   final FirebaseFirestore _firebaseFirestore; //create an instance

//   // initialize in constructor, could be null
//   ExerciseRepository({FirebaseFirestore? firebaseFirestore})
//       : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

//   @override
//   Stream<List<Exercise>> getAllExercises() {
//     return _firebaseFirestore
//         .collection('exercises') // retrieve exercises collection
//         .snapshots() // return a stream of query snapshots = all docs inside the collection
//         .map((snapshot) {
//       return snapshot.docs.map((doc) => Exercise.fromSnapshot(doc)).toList();
//     }); // for each doc, return a exercise class instance
//   }
// }
