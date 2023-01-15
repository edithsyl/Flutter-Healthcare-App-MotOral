import 'package:custom_ui/custom_ui.dart';
import 'package:go_router/go_router.dart';

/// make [login] & [signup] button using long button from [custom_ui] package
/// use context.go() from gorouter to navigate to login screen and registration screen
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is an example, plz change it
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/girl_background.png'),
          fit: BoxFit.fitHeight,
          alignment: Alignment.bottomRight,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                image: const DecorationImage(
                  image: AssetImage('assets/images/motoral.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomRight,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
            ),
            const VerticalGap(num: 32),
            Text(
              'Safeguarding',
              style: AppTypographyData.primaryOrange().sourceSansProBodyBold,
            ),
            Text(' your oral motor muscles',
                style: AppTypographyData.greyShades_5().sourceSansProBodyBold),
            const VerticalGap(num: 500),
            LongAppOutlineButton(
                title: 'LOG IN',
                onPressed: () {
                  context.goNamed('login');
                }),
            const VerticalGap(num: 16),
            LongAppSolidButton(
                title: 'SIGN UP',
                onPressed: () {
                  context.goNamed('signup');
                }),
          ]),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text("New here?  ",
      //         style: AppTypographyData.greyShades_6().sourceSansProBodySmall),
      //     GestureDetector(
      //       onTap: () {
      //         context.goNamed('signup');
      //       },
      //       child: Text('Sign up',
      //           style: AppTypographyData.greyShades_6().quicksandBodySmall),
      //     )
      //   ],
    );
  }
}
