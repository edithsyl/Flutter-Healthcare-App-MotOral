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
  // final _auth = FirebaseAuth.instance;
  // final _formKey = GlobalKey<FormState>();

  // final TextEditingController firstNameEditingController =
  //     TextEditingController();
  // final TextEditingController secondNameEditingController =
  //     TextEditingController();
  // final TextEditingController passwordEditingController =
  //     TextEditingController();
  // final TextEditingController emailEditingController = TextEditingController();
  // final TextEditingController confirmPasswordEditingController =
  //     TextEditingController();

  @override
  Widget build(BuildContext context) {
    //   final firstNameField = TextFormField(
    //     autofocus: false,
    //     controller: firstNameEditingController,
    //     keyboardType: TextInputType.name,
    //     validator: (value) {
    //       RegExp regex = new RegExp(r'^.{2,}$');
    //       if (value!.isEmpty) {
    //         return ("First name cannot be empty");
    //       }
    //       if (!regex.hasMatch(value)) {
    //         return ("Please enter valid name(Minimum 2 Characters)");
    //       }
    //       return null;
    //     },
    //     onSaved: (value) {
    //       firstNameEditingController.text = value!;
    //     },
    //     textInputAction: TextInputAction.next,
    //     decoration: InputDecoration(
    //         prefixIcon: const Icon(Icons.account_circle),
    //         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
    //         hintText: "First Name",
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )),
    //   );

    //   final secondNameField = TextFormField(
    //     autofocus: false,
    //     controller: secondNameEditingController,
    //     keyboardType: TextInputType.name,
    //     validator: (value) {
    //       RegExp regex = new RegExp(r'^.{2,}$');
    //       if (value!.isEmpty) {
    //         return ("Second name cannot be empty");
    //       }
    //       if (!regex.hasMatch(value)) {
    //         return ("Please enter valid name(Minimum 2 Characters)");
    //       }
    //       return null;
    //     },
    //     onSaved: (value) {
    //       secondNameEditingController.text = value!;
    //     },
    //     textInputAction: TextInputAction.next,
    //     decoration: InputDecoration(
    //         prefixIcon: Icon(Icons.account_circle),
    //         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //         hintText: "Second Name",
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )),
    //   );

    //   final emailField = TextFormField(
    //     autofocus: false,
    //     controller: emailEditingController,
    //     keyboardType: TextInputType.emailAddress,
    //     validator: (value) {
    //       if (value!.isEmpty) {
    //         return ("Please enter your email");
    //       }
    //       // reg expression for email validation
    //       if (!RegExp(
    //               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //           .hasMatch(value)) {
    //         return ("Please enter a valid email");
    //       }
    //       return null;
    //     },
    //     onSaved: (value) {
    //       emailEditingController.text = value!;
    //     },
    //     textInputAction: TextInputAction.next,
    //     decoration: InputDecoration(
    //         prefixIcon: const Icon(Icons.mail),
    //         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
    //         hintText: "Email",
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )),
    //   );

    //   final passwordField = TextFormField(
    //     autofocus: false,
    //     controller: passwordEditingController,
    //     keyboardType: TextInputType.visiblePassword,
    //     validator: (value) {
    //       RegExp regex = new RegExp(r'^.{6,}$');
    //       if (value!.isEmpty) {
    //         return ("Please enter your password");
    //       }
    //       if (!regex.hasMatch(value)) {
    //         return ("Please enter valid password(Minimum 6 Characters)");
    //       }
    //       return null;
    //     },
    //     onSaved: (value) {
    //       passwordEditingController.text = value!;
    //     },
    //     textInputAction: TextInputAction.next,
    //     decoration: InputDecoration(
    //         prefixIcon: Icon(Icons.vpn_key),
    //         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //         hintText: "Password",
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )),
    //   );

    //   final confirmPasswordField = TextFormField(
    //     autofocus: false,
    //     controller: confirmPasswordEditingController,
    //     keyboardType: TextInputType.visiblePassword,
    //     validator: (value) {
    //       if (confirmPasswordEditingController.text !=
    //           passwordEditingController.text) {
    //         return ("Password don't match");
    //       }
    //       return null;
    //     },
    //     onSaved: (value) {
    //       confirmPasswordEditingController.text = value!;
    //     },
    //     textInputAction: TextInputAction.done,
    //     decoration: InputDecoration(
    //         prefixIcon: const Icon(Icons.vpn_key),
    //         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
    //         hintText: "Confirm Password",
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )),
    //   );

    //   final signupButton = LongAppSolidButton(
    //     title: 'SIGN UP',
    //     onPressed: () {
    //       signUp(emailEditingController.text, passwordEditingController.text);
    //     },
    //   );
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
                    // firstNameField,
                    // const VerticalGap(num: 25),
                    // secondNameField,
                    // const VerticalGap(num: 25),
                    // emailField,
                    // const VerticalGap(num: 25),
                    // passwordField,
                    // const VerticalGap(num: 25),
                    // confirmPasswordField,
                    // const VerticalGap(num: 25),
                    // signupButton,
                    // const VerticalGap(num: 20),
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
