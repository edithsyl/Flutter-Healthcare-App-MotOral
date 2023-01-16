import 'package:beta_version/widgets/videoplayer/asset_player_widget.dart';
import 'package:beta_version/widgets/videoplayer/network_player_widget2.dart';
import 'package:custom_ui/source/theme/data.dart';
import 'package:custom_ui/source/widgets/buttons/_buttons.dart';
import 'package:custom_ui/source/widgets/widgets.dart';
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

showVideoDialog(
  BuildContext context,
  String title,
  String path,
  double width,
  //String leftButtonName,
  String rightButtonName,
  //VoidCallback leftOnpressed,
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
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: width,
              child: AssetPlayerWidget(
                video_path: path,
              ),
            ),
            const VerticalGap(num: 24),
            AppSolidRoundButtonSmall(
              title: rightButtonName,
              onPressed: rightOnpressed,
            )
          ],
        ),
      );
    },
  );
}

showNetworkVideoDialog(
  BuildContext context,
  String title,
  String path,
  double width,
  //String leftButtonName,
  String rightButtonName,
  //VoidCallback leftOnpressed,
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
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: width,
              child: NetworkPlayerWidget2(
                video_path: path,
              ),
            ),
            const VerticalGap(num: 24),
            AppSolidRoundButtonSmall(
              title: rightButtonName,
              onPressed: rightOnpressed,
            )
          ],
        ),
      );
    },
  );
}
