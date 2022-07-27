import 'package:flutter/material.dart';
import 'package:custom_ui/custom_ui.dart';

//solidroundbuttonregular,    quicksandBody, padding: 16/4
//solidroundbuttonsmall,      quicksandSmallButton, padding: 12/8
//outlinedroundbuttonregular, quicksandBody, padding: 16/4
//outlinedroundbuttonsmall,   quicksandSmallButton, padding: 12/8

class AppSolidRoundButtonReg extends StatelessWidget {
  const AppSolidRoundButtonReg({
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
          textStyle: AppTypographyData.primaryWhite().quicksandBody,
          primary: AppColorsData.regular().primaryOrange,
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x0_5,
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

class AppOutlinedRoundButtonReg extends StatelessWidget {
  const AppOutlinedRoundButtonReg({
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
          textStyle: AppTypographyData.primaryOrange().quicksandBody,
          primary: AppColorsData.regular().primaryWhite,
          side: BorderSide(
            color: AppColorsData.regular().primaryOrange,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x0_5,
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

class AppSolidRoundButtonSmall extends StatelessWidget {
  const AppSolidRoundButtonSmall({
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
          textStyle: AppTypographyData.primaryOrange().quicksandSmallButton,
          primary: AppColorsData.regular().primaryOrange,
          onPrimary: AppColorsData.regular().primaryWhite,
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x1,
            horizontal: AppSpacingData.regular().x1_5,
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

class AppOutlinedRoundButtonSmall extends StatelessWidget {
  const AppOutlinedRoundButtonSmall({
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
          textStyle: AppTypographyData.primaryOrange().quicksandSmallButton,
          primary: AppColorsData.regular().primaryWhite,
          side: BorderSide(
            color: AppColorsData.regular().primaryOrange,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            vertical: AppSpacingData.regular().x1,
            horizontal: AppSpacingData.regular().x1_5,
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

class IconOutlinedRoundButtonReg extends StatelessWidget {
  const IconOutlinedRoundButtonReg({
    Key? key,
    required this.icon,
    required this.title,
    required this.titlestyle,
    required this.borderColor,
    required this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final TextStyle titlestyle;
  final Color borderColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          color: AppColorsData.regular().primaryWhite,
          borderRadius: const AppRadiusData.regular().asBorderRadius().allRound,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const HorizontalGap(num: 12),
            Text(
              title,
              style: titlestyle,
            ),
          ],
        ),
      ),
    );

    // ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //       minimumSize: const Size(5, 5),
    //       textStyle: AppTypographyData.primaryWhite().quicksandBody,
    //       primary: AppColorsData.regular().primaryOrange,
    //       padding: EdgeInsets.symmetric(
    //         vertical: AppSpacingData.regular().x0_5,
    //         horizontal: AppSpacingData.regular().x2,
    //       ),
    //       elevation: 0,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: AppRadiusData.regular().asBorderRadius().allRound,
    //       )),
    //   onPressed: onPressed,
    //   child: Text(title),
    // );
  }
}
