import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/customtoolpit.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

// used in exercise_info_page.dart
//used in setting_page.dart

/// [title] at center, back button on the left
/// eg. case history page, notification page, exercise info page
class AppBarContent extends StatelessWidget {
  const AppBarContent({
    Key? key,
    required this.title,
    required this.leftOnPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback leftOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: leftOnPressed,
              icon: const Icon(CustomIcons.back),
              color: AppColorsData.regular().primaryWhite,
            ),
            // const HorizontalGap(num: 50),
            Text(
              title,
              style: AppTypographyData.primaryWhite().quicksandTitle2,
            ),
            IconButton(
              onPressed: leftOnPressed,
              icon: const Icon(CustomIcons.back),
              color: Colors.transparent,
            ),
            // const HorizontalGap(num: 50),
            // IconButton(
            //   icon: const Icon(
            //     Icons.more_vert,
            //     size: 20,
            //   ),
            //   color: AppColorsData.regular().primaryWhite,
            //   onPressed: () {},
            // ),
          ],
        ),
      ],
    );
  }
}

/// [title] at center, back button on the left, report icon on the right
/// eg. case history page, notification page, exercise info page
class ProfileAppBarContent extends StatelessWidget {
  const ProfileAppBarContent({
    Key? key,
    required this.title,
    required this.leftOnPressed,
    required this.rightOnPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback leftOnPressed;
  final VoidCallback rightOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: leftOnPressed,
              icon: const Icon(CustomIcons.back),
              color: AppColorsData.regular().primaryWhite,
            ),
            // const HorizontalGap(num: 50),
            Text(
              title,
              style: AppTypographyData.primaryWhite().quicksandTitle2,
            ),
            IconButton(
              onPressed: rightOnPressed,
              icon: const Icon(CustomIcons.report),
              color: AppColorsData.regular().primaryWhite,
            ),
          ],
        ),
      ],
    );
  }
}

/// [title] on the left, no back button
/// eg. homepage, exercise page
class AppBarContentExercise extends StatelessWidget {
  const AppBarContentExercise({
    Key? key,
    required this.xpNum,
    required this.streakNum,
  }) : super(key: key);

  final int xpNum;
  final int streakNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Exercises',
          style: AppTypographyData.primaryWhite().quicksandTitle2,
        ),
        const HorizontalGap(num: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTooltip(
              message: 'exercise to earn more experience(xp)',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'xp ',
                    style: AppTypographyData.primaryWhite().quicksandBody,
                  ),
                  Text(
                    '$xpNum',
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                  ),
                ],
              ),
            ),
            const HorizontalGap(num: 16),
            MyTooltip(
              message: 'this shows your login streak',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    CustomIcons.streakfire,
                    color: AppColorsData.regular().primaryWhite,
                  ),
                  Text(
                    '$streakNum',
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
