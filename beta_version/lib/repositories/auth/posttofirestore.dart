import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../models/user_model.dart';

// postDetailsToFirestore() async {
//   // calling our firestore
//   // calling user model
//   // sending these values
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   User? user = _auth.currentUser;

//   User userModel = User();

//   // writing all the values
//   userModel.email = user!.email;
//   userModel.uid = user.uid;
//   userModel.firstName = firstNameEditingController.text;
//   userModel.secondName = secondNameEditingController.text;

//   await firebaseFirestore
//       .collection("users")
//       .doc(user.uid)
//       .set(userModel.toMap());

//   Fluttertoast.showToast(msg: "account created successfully :)");
//   context.goNamed('home');
// }
