import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
//TODO: fix UI

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: leftOnPressed,
                icon: const Icon(Icons.arrow_back),
                color: AppColorsData.regular().primaryWhite,
              ),
              const HorizontalGap(num: 50),
              Text(
                title,
                style: AppTypographyData.primaryWhite().quicksandTitle2,
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
        ),
      ],
    );
  }
}

/// [title] on the left, no back button
/// eg. homepage, exercise page
class AppBarContent2 extends StatelessWidget {
  const AppBarContent2({
    Key? key,
    required this.title,
    required this.rightOnPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback rightOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: AppTypographyData.primaryWhite().quicksandTitle2,
              ),
              const HorizontalGap(num: 50),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                color: AppColorsData.regular().primaryWhite,
                onPressed: rightOnPressed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
