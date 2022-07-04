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
                padding: EdgeInsets.all(AppSpacingData.regular().x4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign up',
                      style: TextStyle(
                          color: AppColorsData.regular().greyShades_5,
                          fontWeight: FontWeight.w800,
                          fontFamily: "SourceSansPro",
                          fontStyle: FontStyle.normal,
                          fontSize: 32.0),
                    ),
                    const VerticalGap(num: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'create your account for ',
                          style: AppTypographyData.greyShades_4()
                              .sourceSansProBodySemibold,
                        ),
                        Text(
                          'free',
                          style: AppTypographyData.primaryOrange()
                              .sourceSansProBodySemibold,
                        ),
                      ],
                    ),
                    const VerticalGap(num: 45),
                    const SignupForm(),
                    const VerticalGap(num: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Have an account already?  ",
                            style: AppTypographyData.greyShades_6()
                                .sourceSansProBodySmall),
                        GestureDetector(
                          onTap: () {
                            context.goNamed('login');
                          },
                          child: Text("Log in",
                              style: AppTypographyData.greyShades_6()
                                  .quicksandBodySmall),
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
