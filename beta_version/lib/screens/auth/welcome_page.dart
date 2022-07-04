import 'package:custom_ui/custom_ui.dart';
import 'package:go_router/go_router.dart';

// MYTODO: recreate welcome page

/// make [login] & [signup] button using long button from [custom_ui] package
/// use context.go() from gorouter to navigate to login screen and registration screen
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is an example, plz change it
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("New here?  ",
            style: AppTypographyData.greyShades_6().sourceSansProBodySmall),
        GestureDetector(
          onTap: () {
            context.goNamed('signup');
          },
          child: Text('Sign up',
              style: AppTypographyData.greyShades_6().quicksandBodySmall),
        )
      ],
    );
  }
}
