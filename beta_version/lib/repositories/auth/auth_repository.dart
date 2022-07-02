import 'package:beta_version/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class AuthRepository {
  // internal variable of this class
  final firebase_auth.FirebaseAuth _firebaseAuth;

  // initialize in constructor, could be null
  AuthRepository({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  var currentUser = User.empty;

  // get a stream of current authenticated users into the app
  Stream<User> get user {
    // get authenticated users' data
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      // if there's no data: return empty, else: convert it to object that matches our user model
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      currentUser = user;
      return user;
    }); // for each doc, return a category class instance
  }

  // create a new account
  Future<void> signup({
    required String email,
    required String password,
    // required String firstname,
    // required String lastname,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {}
  }

  // to authenticate user
  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {}
  }

  // to complete session
  Future<void> logOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut()]);
    } catch (_) {}
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      uid: uid,
      email: email,
    );
  }
}
