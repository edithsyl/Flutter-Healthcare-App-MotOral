import 'package:flutter/material.dart';
import 'package:custom_ui/custom_ui.dart';

// not clickable tag, for info only
// eg. 5 mins, 3 exercise/ read/unread

// input color and text
// TextStyle: sourceSansProBodySmall
// Padding: 12/2

class InfoTag extends StatelessWidget {
  const InfoTag({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: AppSpacingData.regular().x1_5,
        horizontal: AppSpacingData.regular().x0_25,
      ),
      color: color,
      margin: EdgeInsets.symmetric(
        vertical: AppSpacingData.regular().x1_5,
        horizontal: AppSpacingData.regular().x0_25,
      ),
      decoration: BoxDecoration(
        borderRadius: AppRadiusData.regular().asBorderRadius().allRound,
      ),
      child: Text(
        title,
        style: AppTypographyData.primaryWhite().sourceSansProBodySmall,
      ),
    );
  }
}
