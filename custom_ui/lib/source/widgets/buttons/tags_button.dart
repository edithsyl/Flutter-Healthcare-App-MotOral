import 'package:flutter/material.dart';
import 'package:custom_ui/custom_ui.dart';
// selected
// color: primaryOrange
// textcolor: white
// textStyle: sourceSansProBodySemibold

// not_selected
// color: primaryWhite
// textcolor: AlmostBlack
// textStyle: sourceSansProBodySmall
// outline: greyTint4, width 1

// Padding: 16/8

class TagSelected extends StatelessWidget {
  const TagSelected({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(5, 5),
          textStyle: AppTypographyData.primaryWhite().sourceSansProBodySemibold,
          primary: AppColorsData.regular().primaryOrange,
          onPrimary: AppColorsData.regular().primaryWhite,
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x1,
            horizontal: AppSpacingData.regular().x2,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRound,
          )),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class TagNotSelected extends StatelessWidget {
  const TagNotSelected({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(5, 5),
          textStyle: AppTypographyData.greyShades_3().sourceSansProBodySmall,
          primary: AppColorsData.regular().orangeShadesAlmostBlack,
          side: BorderSide(
            color: AppColorsData.regular().greyTints_4,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x1,
            horizontal: AppSpacingData.regular().x2,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: AppRadiusData.regular().asBorderRadius().allRound,
          )),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
