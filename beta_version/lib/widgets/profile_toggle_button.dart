import 'package:beta_version/app_router.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ProfileToggleButton extends StatefulWidget {
  @override
  _ProfileToggleButtonState createState() => _ProfileToggleButtonState();
}

class _ProfileToggleButtonState extends State<ProfileToggleButton> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minHeight: 40.0,
      minWidth: 120.0,
      initialLabelIndex: 1,
      cornerRadius: 40,
      customTextStyles: List.generate(
          2, (_) => AppTypographyData.primaryWhite().quicksandBody),
      activeFgColor: AppColorsData.regular().primaryWhite,
      activeBgColors:
          List.generate(2, (_) => [AppColorsData.regular().primaryOrange]),
      inactiveBgColor: AppColorsData.regular().orangeTints_8,
      inactiveFgColor: AppColorsData.regular().primaryOrange,
      totalSwitches: 2,
      labels: const ['Statistics', 'Badges'],
      borderWidth: 2.0,
      borderColor: [AppColorsData.regular().primaryOrange],
      dividerColor: AppColorsData.regular().primaryOrange,
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
