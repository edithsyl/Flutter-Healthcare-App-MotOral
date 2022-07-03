import 'package:beta_version/widgets/signup_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.goNamed('login');
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.orange,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SignupForm(),
                    const VerticalGap(num: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Have an account already? "),
                        GestureDetector(
                          onTap: () {
                            context.goNamed('login');
                          },
                          child: const Text("Login",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15)),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  // void signUp(String email, String password) async {
  // if (_formKey.currentState!.validate()) {
  //   await _auth
  //       .createUserWithEmailAndPassword(email: email, password: password)
  //       .then((value) => {postDetailsToFirestore()})
  //       .catchError((e) {
  //     Fluttertoast.showToast(msg: e!.message);
  //   });
  // }
  // }

  // postDetailsToFirestore() async {
  // calling our firestore
  // calling user model
  // sending these values
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // User? user = _auth.currentUser;

  // User userModel = User();

  // // writing all the values
  // userModel.email = user!.email;
  // userModel.uid = user.uid;
  // userModel.firstName = firstNameEditingController.text;
  // userModel.secondName = secondNameEditingController.text;

  // await firebaseFirestore
  //     .collection("users")
  //     .doc(user.uid)
  //     .set(userModel.toMap());

  // Fluttertoast.showToast(msg: "account created successfully :)");
  // context.goNamed('home');
  //Navigator.pushNamedAndRemoveUntil((context), '/home', (route) => false);
  // }
}
