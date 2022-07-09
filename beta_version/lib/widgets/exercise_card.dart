import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class exerciseCard_1 extends StatelessWidget {
  exerciseCard_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: AppColorsData.regular().orangeTints_4,
        image: DecorationImage(
          image: AssetImage('assets/images/thinking.png'),
          colorFilter: ColorFilter.mode(
            AppColorsData.regular().orangeTints_4,
            BlendMode.hardLight,
          ),
          fit: BoxFit.fitHeight,
          alignment: Alignment.bottomRight,
          repeat: ImageRepeat.noRepeat,
        ),
        borderRadius: const AppRadiusData.regular().asBorderRadius().allRegular,
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Cheek Strentheing",
                style: AppTypographyData.primaryWhite().sourceSansProBodyBold),
            Row(
              children: <Widget>[
                Text("4",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
                Text(" mins * ",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
                Text("Cheek",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
              ],
            ),
            Text("strengthe the muscles of the cheek",
                style: AppTypographyData.greyShades_6().sourceSansProBodySmall),
          ],
        ),
      ),
    );
  }
}
