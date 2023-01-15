import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

/// https://www.youtube.com/watch?v=81XYs6lliB4&t=88s

class FirestoreApi {
  // final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('user');
  Future<void> createUser({required User user}) async {
    log.i('user:$user');
  }
}
