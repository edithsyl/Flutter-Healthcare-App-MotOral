import 'package:beta_version/assets/custom_icons.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingRepeatRow extends StatelessWidget {
  final String name;
  final String destination;

  const SettingRepeatRow({
    Key? key,
    required this.name,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style:
                AppTypographyData.orangeShadesAlmostBlack().sourceSansProBody,
          ),
          IconButton(
            icon: const Icon(
              CustomIcons.arrowRight,
            ),
            color: AppColorsData.regular().orangeShadesAlmostBlack,
            onPressed: () => context.goNamed(destination),
          )
        ],
      ),
      onTap: () {
        context.goNamed(destination);
      },
    );
  }
}
