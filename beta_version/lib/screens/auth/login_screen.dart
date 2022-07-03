import 'package:beta_version/widgets/login_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  // final _formKey = GlobalKey<FormState>();

  // //editing controller
  // final TextEditingController emailController = new TextEditingController();
  // final TextEditingController passwordController = new TextEditingController();

  // // firebase
  // final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // final emailField = TextFormField(
    //   autofocus: false,
    //   controller: emailController,
    //   keyboardType: TextInputType.emailAddress,
    //   validator: (value) {
    //     if (value!.isEmpty) {
    //       return ("Please enter your email");
    //     }
    //     // reg expression for email validation
    //     if (!RegExp(
    //             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //         .hasMatch(value)) {
    //       return ("Please enter a valid email");
    //     }
    //     return null;
    //   },
    //   onSaved: (value) {
    //     emailController.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     hintText: "Username/ Email address",
    //   ),
    // );

    // final passwordField = TextFormField(
    //   autofocus: false,
    //   controller: passwordController,
    //   keyboardType: TextInputType.visiblePassword,
    //   validator: (value) {
    //     RegExp regex = new RegExp(r'^.{6,}$');
    //     if (value!.isEmpty) {
    //       return ("Please enter your password");
    //     }
    //     if (!regex.hasMatch(value)) {
    //       return ("Please enter valid password(Minimum 6 Characters)");
    //     }
    //     return null;
    //   },
    //   onSaved: (value) {
    //     passwordController.text = value!;
    //   },
    //   textInputAction: TextInputAction.done,
    //   decoration: const InputDecoration(
    //     hintText: 'Password',
    //   ),
    // );

    return Scaffold(
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CurvyAppBarPainter(),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: AppSpacingData.regular().x5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const VerticalGap(num: 50),
                    Text(
                      'Log in',
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
                          'welcome back! ',
                          style: AppTypographyData.primaryOrange()
                              .sourceSansProBodySemibold,
                        ),
                        Text(
                          'tell us your',
                          style: AppTypographyData.greyShades_4()
                              .sourceSansProBodySemibold,
                        ),
                      ],
                    ),
                    const VerticalGap(num: 45),
                    const LoginForm(),
                    const VerticalGap(num: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("New here? "),
                        GestureDetector(
                          onTap: () {
                            context.goNamed('signup');
                            //Navigator.pushNamed(context, '/signup');
                          },
                          child: Text('SignUp',
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

  // void signIn(String email, String password) async {
  //   if (_formKey.currentState!.validate()) {
  //     await _auth
  //         .signInWithEmailAndPassword(email: email, password: password)
  //         .then((uid) => {
  //               Fluttertoast.showToast(msg: "Login Successful :)"),
  //               context.goNamed('home'),
  //             })
  //         .catchError((e) {
  //       Fluttertoast.showToast(msg: e!.message);
  //     });
  //   }
  // }
}
