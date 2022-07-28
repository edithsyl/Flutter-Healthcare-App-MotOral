//MYTODO: 2. put daily exercise card here
// reference exercise_card

import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/test_nest/t_data.dart';
import 'package:custom_ui/custom_ui.dart';

class TodoDailyPractice extends StatelessWidget {
  const TodoDailyPractice({
    Key? key,
    required this.exercise,
    required this.ontap,
  }) : super(key: key);

  final Exercise exercise;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 280,
          height: 120,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 174, 191, 255),
            image: DecorationImage(
              image: AssetImage(exercise.image), // 'assets/images/thinking.png'
              colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 174, 191,
                    255), // AppColorsData.regular().orangeTints_4,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(exercise.name, // "Cheek Strentheing",
                    style:
                        AppTypographyData.primaryWhite().sourceSansProBodyBold),
                Row(
                  children: <Widget>[
                    Text(exercise.duration, // "4",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(" mins * ",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(exercise.category, // "Cheek",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                  ],
                ),
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

class ThisDailyPractice extends StatelessWidget {
  const ThisDailyPractice({
    Key? key,
    required this.exercise,
    required this.ontap,
  }) : super(key: key);

  final Exercise exercise;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 280,
          height: 160,
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryWhite,
            border: Border.all(
              color: AppColorsData.regular().primaryOrange,
              width: 2,
            ),
            // image: DecorationImage(
            //   image: AssetImage(exercise.image), // 'assets/images/thinking.png'
            //   colorFilter: ColorFilter.mode(
            //     AppColorsData.regular()
            //         .primaryOrange, // AppColorsData.regular().orangeTints_4,
            //     BlendMode.hardLight,
            //   ),
            //   fit: BoxFit.fitHeight,
            //   alignment: Alignment.bottomRight,
            //   repeat: ImageRepeat.noRepeat,
            // ),
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(exercise.name, // "Cheek Strentheing",
                    style: AppTypographyData.greyShades_6().quicksandBody),
                Row(
                  children: <Widget>[
                    Text(exercise.duration, // "4",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(" mins * ",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                    Text(exercise.category, // "Cheek",
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodySmall),
                  ],
                ),
                Text(
                    exercise
                        .description, // "strengthe the muscles of the cheek",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
                const VerticalGap(num: 16),
                AppSolidRoundButtonReg(
                  title: 'Go',
                  onPressed: ontap,
                ),
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
  }) : super(key: key);

  final Exercise exercise;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 280,
          height: 120,
          decoration: BoxDecoration(
            color: AppColorsData.regular().greyTints_3,
            image: DecorationImage(
              image: AssetImage(exercise.image), // 'assets/images/thinking.png'
              colorFilter: ColorFilter.mode(
                AppColorsData.regular()
                    .greyTints_3, // AppColorsData.regular().orangeTints_4,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(exercise.name, // "Cheek Strentheing",
                    style:
                        AppTypographyData.primaryWhite().sourceSansProBodyBold),
                Row(
                  children: <Widget>[
                    Text(exercise.duration, // "4",
                        style: AppTypographyData.primaryWhite()
                            .sourceSansProBodySmall),
                    Text(" mins * ",
                        style: AppTypographyData.primaryWhite()
                            .sourceSansProBodySmall),
                    Text(exercise.category, // "Cheek",
                        style: AppTypographyData.primaryWhite()
                            .sourceSansProBodySmall),
                  ],
                ),
                Text(
                    exercise
                        .description, // "strengthe the muscles of the cheek",
                    style: AppTypographyData.primaryWhite()
                        .sourceSansProBodySmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
