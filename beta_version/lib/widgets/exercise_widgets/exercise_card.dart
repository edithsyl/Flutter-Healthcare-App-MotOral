import 'package:beta_version/models/exercise_model.dart';
import 'package:custom_ui/custom_ui.dart';

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
          height: 120,
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
