import 'package:beta_version/widgets/profile_widgets/badges_list.dart';
import 'package:beta_version/widgets/profile_widgets/statistics.dart';
import 'package:custom_ui/custom_ui.dart';

import 'package:flutter/material.dart';

class ProfileToggleButton extends StatefulWidget {
  const ProfileToggleButton({Key? key}) : super(key: key);

  @override
  _ProfileToggleButtonState createState() => _ProfileToggleButtonState();
}

class _ProfileToggleButtonState extends State<ProfileToggleButton> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = [true, false];
  }

  @override
  Widget build(BuildContext context) {
    var shownitem = Container(
      child: isSelected[0] ? StatisticsList() : BadgesList(),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: AppColorsData.regular().primaryWhite,
          child: ToggleButtons(
            isSelected: isSelected,
            selectedColor: AppColorsData.regular().primaryWhite,
            color: AppColorsData.regular().primaryOrange,
            fillColor: AppColorsData.regular().primaryOrange,
            renderBorder: true,
            borderColor: AppColorsData.regular().primaryOrange,
            selectedBorderColor: AppColorsData.regular().primaryOrange,
            borderWidth: 2.5,
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRound,
            highlightColor: AppColorsData.regular().primaryOrange,
            constraints: BoxConstraints(
                minWidth: (MediaQuery.of(context).size.width) / 4 + 8,
                minHeight: 36),
            onPressed: (int newIndex) {
              setState(() {
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                  } else {
                    isSelected[index] = false;
                  }
                }
              });
            },
            children: <Widget>[
              Text(
                style: AppTypographyData.noColor().quicksandBody,
                'Statistics',
              ),
              Text(
                style: AppTypographyData.noColor().quicksandBody,
                'Badges',
              ),
            ],
          ),
        ),
        const VerticalGap(num: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: shownitem,
        ),
      ],
    );
  }
}
