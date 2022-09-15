import 'package:beta_version/widgets/AccSetup_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccSetupScreen extends StatefulWidget {
  const AccSetupScreen({Key? key}) : super(key: key);

  @override
  State<AccSetupScreen> createState() => _AccSetupScreenState();
}

class _AccSetupScreenState extends State<AccSetupScreen> {
  // form key
  // final _formKey = GlobalKey<FormState>();

  // // firebase
  // final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CurvyAppBarPainter(),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(AppSpacingData.regular().x5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
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
                    const AccSetupForm(),
                    const VerticalGap(num: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("New here?  ",
                            style: AppTypographyData.greyShades_6()
                                .sourceSansProBodySmall),
                        GestureDetector(
                          onTap: () {
                            context.goNamed('signup');
                          },
                          child: Text('Sign up',
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
  //               Fluttertoast.showToast(msg: "AccSetup Successful :)"),
  //               context.goNamed('home'),
  //             })
  //         .catchError((e) {
  //       Fluttertoast.showToast(msg: e!.message);
  //     });
  //   }
  // }
}
