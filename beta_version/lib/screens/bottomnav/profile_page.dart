import 'package:beta_version/widgets/snack_bars.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// MYTODO: add firebase avatar
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.of(context).size,
      painter: CurvyAppBarPainter(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacingData.regular().x5,
          horizontal: AppSpacingData.regular().x5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: AppTypographyData.primaryWhite().quicksandTitle2,
                ),
                AppSolidRoundButtonReg(
                  title: 'Setting',
                  onPressed: () {
                    context.goNamed('setting');
                  },
                ),
              ],
            ),
            const VerticalGap(num: 50),
            const Center(child: Text("Profile page")),
            const VerticalGap(num: 50),
            // TESTING
            AppSolidRoundButtonReg(
              title: 'test snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  getSnackBarWidget(
                    Text(
                      "I'm a snack Text",
                      style: AppTypographyData.greyShades_6().quicksandBody,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
