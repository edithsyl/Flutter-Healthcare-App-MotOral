import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

@immutable
class MyTooltip extends StatelessWidget {
  final Widget child;
  final String message;

  const MyTooltip({
    Key? key,
    required this.message,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<State<Tooltip>>();
    return Tooltip(
      key: key,
      message: message,
      height: 16,
      textStyle: AppTypographyData.greyShades_6().sourceSansProBody,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryWhite.withOpacity(0.9),
        borderRadius: const AppRadiusData.regular().asBorderRadius().allSmall,
      ),
      child: child,
    );
  }
}
