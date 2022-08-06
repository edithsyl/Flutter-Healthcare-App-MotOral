import 'package:beta_version/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
part 'auth_failures.dart';

// responsible for abstracting the underlying implementation of how a user is authenticated & fetched
class AuthRepository {
  // internal variable of this class
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // Whether or not the current environment is web
  /// Should only be overriden for testing purposes. Otherwise, defaults to [kIsWeb]
  // @visibleForTesting
  bool isWeb = false;

  // initialize in constructor
  AuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  var currentUser = UserModel.empty;

  /// Stream of [UserModel] which will emit the current user when the authentication state changes
  Stream<UserModel> get user {
    // get authenticated users' data
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      // if there's no data: return empty, else: convert it to object that matches our user model
      final user = firebaseUser == null ? UserModel.empty : firebaseUser.toUser;
      currentUser = user;
      return user;
    }); // for each doc, return a category class instance
  }

  /// Creates a new user with the provided [email] and [password].
  /// Throws a [SignUpWithEmailAndPasswordFailure] if an exception occurs.
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //.then((value) => {postDetailsToFirestore()});
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  // Starts the Sign In with Google Flow.
  /// Throws a [LogInWithGoogleFailure] if an exception occurs.
  Future<void> logInWithGoogle() async {
    try {
      late final firebase_auth.AuthCredential credential;
      if (isWeb) {
        final googleProvider = firebase_auth.GoogleAuthProvider();
        final userCredential = await _firebaseAuth.signInWithPopup(
          googleProvider,
        );
        credential = userCredential.credential!;
      } else {
        final googleUser = await _googleSignIn.signIn();
        final googleAuth = await googleUser!.authentication;
        credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      }

      await _firebaseAuth.signInWithCredential(credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LogInWithGoogleFailure.fromCode(e.code);
    } catch (_) {
      throw const LogInWithGoogleFailure();
    }
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
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LogInWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  // to complete session
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (_) {
      throw LogOutFailure();
    }
  }
}

extension on firebase_auth.User {
  UserModel get toUser {
    return UserModel(
      uid: uid,
      email: email,
      username: displayName,
      photo: photoURL,
    );
  }

  // Future<void> postDetailsToFirestore() async {
  //   // calling our firestore
  //   // calling user model
  //   // sending these values
  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  //   User userModel = User();

  //   await firebaseFirestore
  //       .collection("users")
  //       .doc(user.uid)
  //       .set(userModel.toMap());

  //   Fluttertoast.showToast(msg: "account created successfully :)");
  //   context.goNamed('home');
  // }
}
