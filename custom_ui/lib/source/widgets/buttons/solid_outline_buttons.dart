import 'package:flutter/material.dart';
import 'package:custom_ui/custom_ui.dart';

const longButtonSize = Size(290, 53);

class AppSolidButton extends StatelessWidget {
  const AppSolidButton({
    Key? key,
    required this.title,
    required this.tStyle,
    required this.rad,
    required this.size,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final TextStyle tStyle;
  final BorderRadius rad;
  final Size size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: size,
          textStyle: tStyle,
          primary: AppColorsData.regular().primaryOrange,
          onPrimary: AppColorsData.regular().primaryWhite,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: rad,
          )),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class LongAppSolidButton extends StatelessWidget {
  const LongAppSolidButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppSolidButton(
      title: title,
      tStyle: AppTypographyData.primaryOrange().quicksandBody,
      rad: AppRadiusData.regular().asBorderRadius().allRegular,
      size: longButtonSize,
      onPressed: onPressed,
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    Key? key,
    required this.title,
    required this.tStyle,
    required this.rad,
    required this.size,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final TextStyle tStyle;
  final BorderRadius rad;
  final Size size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          fixedSize: size,
          textStyle: tStyle,
          backgroundColor: AppColorsData.regular().primaryWhite,
          primary: AppColorsData.regular().primaryOrange,
          side: BorderSide(
            color: AppColorsData.regular().primaryOrange,
            width: 1.4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: rad,
          )),
      onPressed: onPressed,
      child: Text(
        title,
        style: tStyle,
      ),
    );
  }
}

class LongAppOutlineButton extends StatelessWidget {
  const LongAppOutlineButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppOutlineButton(
      title: title,
      tStyle: AppTypographyData.primaryOrange().quicksandBody,
      rad: AppRadiusData.regular().asBorderRadius().allRegular,
      size: longButtonSize,
      onPressed: onPressed,
    );
  }
}
