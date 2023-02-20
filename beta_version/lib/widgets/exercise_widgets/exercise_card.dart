import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/models/exercise_model_new.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

import '../../assets/custom_icons.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key? key,
    required this.exercise,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  final Exercise exercise;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.24,
          decoration: BoxDecoration(
            color: color, // AppColorsData.regular().orangeTints_4,
            image: DecorationImage(
              image: AssetImage(exercise.image), // 'assets/images/thinking.png'
              colorFilter: ColorFilter.mode(
                color, // AppColorsData.regular().orangeTints_4,
                BlendMode.hardLight,
              ),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomRight,
              repeat: ImageRepeat.noRepeat,
            ),
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(exercise.name, // "Cheek Strentheing",
                    style: AppTypographyData.primaryWhite().quicksandTitle2),
                const VerticalGap(num: 16),
                Row(
                  children: <Widget>[
                    Text(exercise.duration, // "4",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(" mins  •  ",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(exercise.category, // "Cheek",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                  ],
                ),
                const VerticalGap(num: 8),
                Text(
                    exercise
                        .description, // "strengthe the muscles of the cheek",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExerciseCard2 extends StatelessWidget {
  const ExerciseCard2({
    Key? key,
    required this.exercise,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  final Exercise_new exercise;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryWhite,
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [AppColorsData.regular().primaryWhite, color]),
            border: Border.all(
              color: color,
              width: 2,
            ),
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
            image: DecorationImage(
              image: AssetImage(exercise.image),
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.25), BlendMode.dstATop),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomRight,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 16.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(exercise.name, // "Cheek Strentheing",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodyBold),
                    Row(
                      children: <Widget>[
                        Text(exercise.duration, // "4",
                            style: AppTypographyData.greyShades_6()
                                .sourceSansProBodySmall),
                        Text(" mins  •  ",
                            style: AppTypographyData.greyShades_6()
                                .sourceSansProBodySmall),
                        Text(exercise.category.name, // "Cheek",
                            style: AppTypographyData.greyShades_6()
                                .sourceSansProBodySmall),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CustomIcons.arrowRight),
                  iconSize: 40,
                  color: AppColorsData.regular().primaryWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
