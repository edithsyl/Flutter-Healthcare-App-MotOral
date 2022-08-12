import 'package:custom_ui/source/theme/data.dart';
import 'package:custom_ui/source/widgets/buttons/_buttons.dart';
import 'package:flutter/material.dart';

showCustomDialog(
  BuildContext context,
  String title,
  String leftButtonName,
  String rightButtonName,
  VoidCallback leftOnpressed,
  VoidCallback rightOnpressed,
) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular),
        title: Text(
          title,
          style: AppTypographyData.greyShades_6().sourceSansProBodySemibold,
        ),
        actions: [
          AppOutlinedRoundButtonSmall(
            title: leftButtonName,
            onPressed: leftOnpressed,
          ),
          AppSolidRoundButtonSmall(
            title: rightButtonName,
            onPressed: rightOnpressed,
          )
        ],
      );
    },
  );
}

showCustomDialogwContent(
  BuildContext context,
  String title,
  String content,
  String leftButtonName,
  String rightButtonName,
  VoidCallback leftOnpressed,
  VoidCallback rightOnpressed,
) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular),
        title: Text(
          title,
          style: AppTypographyData.greyShades_6().sourceSansProBodySemibold,
        ),
        content: Text(
          content,
          style: AppTypographyData.greyShades_2().sourceSansProBodySmall,
        ),
        actions: [
          AppOutlinedRoundButtonSmall(
            title: leftButtonName,
            onPressed: leftOnpressed,
          ),
          AppSolidRoundButtonSmall(
            title: rightButtonName,
            onPressed: rightOnpressed,
          )
        ],
      );
    },
  );
}
