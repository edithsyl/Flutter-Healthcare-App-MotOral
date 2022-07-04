import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// code example
// ```
// AppSolidRoundButtonReg(
//   title: 'test snackbar',
//   onPressed: () {
//     ScaffoldMessenger.of(context).showSnackBar(
//       getSnackBarWidget(
//         Text(
//           "I'm a snack Text",
//           style: AppTypographyData.greyShades_6().quicksandBody,
//         ),
//       ),
//     );
//   },
// ),
// ```

SnackBar getSnackBarText(String snackText) {
  return SnackBar(
    margin: const EdgeInsets.symmetric(vertical: 4),
    behavior: SnackBarBehavior.floating,
    content: Container(
      padding: AppSpacingData.regular().asInsets().x2,
      decoration: BoxDecoration(
          color: AppColorsData.regular().primaryWhite,
          boxShadow: [AppShadowsData.regular().down],
          borderRadius:
              const AppRadiusData.regular().asBorderRadius().allRegular),
      child: Text(
        snackText,
        textAlign: TextAlign.center,
        style: AppTypographyData.greyShades_6().sourceSansProBody,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}

SnackBar getSnackBarWidget(Widget snackWidget) {
  return SnackBar(
    margin: const EdgeInsets.symmetric(vertical: 4),
    behavior: SnackBarBehavior.floating,
    content: Container(
      padding: AppSpacingData.regular().asInsets().x2,
      decoration: BoxDecoration(
          color: AppColorsData.regular().primaryWhite,
          boxShadow: [AppShadowsData.regular().down],
          borderRadius:
              const AppRadiusData.regular().asBorderRadius().allRegular),
      child: snackWidget,
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}
