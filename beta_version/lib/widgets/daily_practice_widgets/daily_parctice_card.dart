import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/models/exercise_model_new.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

import '../../assets/custom_icons.dart';

class TodoDailyPractice extends StatelessWidget {
  const TodoDailyPractice({
    Key? key,
    required this.exercise,
    required this.ontap,
    required this.width,
  }) : super(key: key);

  final Exercise_new exercise;
  final VoidCallback ontap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: width,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 174, 191, 255),
            image: DecorationImage(
              image: AssetImage(exercise.image), // 'assets/images/thinking.png'
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25),
                BlendMode.dstATop,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "todo", // "Cheek Strentheing",
                      style:
                          AppTypographyData.primaryWhite().quicksandBodySmall,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const VerticalGap(num: 10),
                    Text(
                      exercise.name, // "Cheek Strentheing",
                      style: AppTypographyData.primaryWhite()
                          .sourceSansProBodyBold,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const VerticalGap(num: 4),
                    Row(
                      children: <Widget>[
                        Text(exercise.duration, // "4",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                        Text(" mins  •  ",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                        Text(exercise.category.name, // "Cheek",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: ontap,
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

class ThisDailyPractice extends StatelessWidget {
  const ThisDailyPractice({
    Key? key,
    required this.exercise,
    required this.ontap,
    required this.width,
  }) : super(key: key);

  final Exercise_new exercise;
  final VoidCallback ontap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: width,
          height: MediaQuery.of(context).size.height * 0.24,
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryWhite,
            border: Border.all(
              color: AppColorsData.regular().primaryOrange,
              width: 2.5,
            ),
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
            image: DecorationImage(
              image: AssetImage(exercise.image),
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.15), BlendMode.dstATop),
              fit: BoxFit.fill,
              alignment: Alignment.bottomRight,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSpacingData.regular().x0_5,
                    horizontal: AppSpacingData.regular().x1_5,
                  ),
                  color: AppColorsData.regular().primaryOrange,
                  child: Text(
                    "do it now", // "Cheek Strentheing",
                    style: AppTypographyData.primaryWhite().quicksandBodySmall,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          exercise.name,
                          style:
                              AppTypographyData.primaryOrange().quicksandTitle2,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const VerticalGap(num: 12),
                        Row(
                          children: <Widget>[
                            Text(exercise.duration, // "4",
                                style: AppTypographyData.primaryOrange()
                                    .sourceSansProBody),
                            Text(" mins  •  ",
                                style: AppTypographyData.primaryOrange()
                                    .sourceSansProBody),
                            Text(exercise.category.name, // "Cheek",
                                style: AppTypographyData.primaryOrange()
                                    .sourceSansProBody),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: ontap,
                      icon: const Icon(CustomIcons.arrowRight),
                      iconSize: 40,
                      color: AppColorsData.regular().primaryOrange,
                    ),
                  ],
                ),
                const VerticalGap(num: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompletedDailyPractice extends StatelessWidget {
  const CompletedDailyPractice({
    Key? key,
    required this.exercise,
    required this.ontap,
    required this.width,
  }) : super(key: key);

  final Exercise_new exercise;
  final VoidCallback ontap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: width,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            color: AppColorsData.regular().greyShades_3,
            image: DecorationImage(
              image: AssetImage(exercise.image), // 'assets/images/thinking.png'
              colorFilter: ColorFilter.mode(
                AppColorsData.regular()
                    .greyShades_4
                    .withOpacity(0.2), // AppColorsData.regular().orangeTints_4,
                BlendMode.dstATop,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "completed", // "Cheek Strentheing",
                      style:
                          AppTypographyData.primaryWhite().quicksandBodySmall,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const VerticalGap(num: 10),
                    Text(
                      exercise.name, // "Cheek Strentheing",
                      style: AppTypographyData.primaryWhite()
                          .sourceSansProBodyBold,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const VerticalGap(num: 4),
                    Row(
                      children: <Widget>[
                        Text(exercise.duration, // "4",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                        Text(" mins  •  ",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                        Text(exercise.category.name, // "Cheek",
                            style: AppTypographyData.primaryWhite()
                                .sourceSansProBodySmall),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: ontap,
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
