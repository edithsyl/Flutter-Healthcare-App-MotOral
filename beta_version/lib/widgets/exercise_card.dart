import 'package:custom_ui/custom_ui.dart';

import '../models/category_model.dart';
import '../models/exercise_model.dart';

/// reference for daily exercise card:
// class ExerciseCard1 extends StatelessWidget {
//   const ExerciseCard1({
//     Key? key,
//     required this.image,
//     required this.color,
//     required this.title,
//     required this.duration,
//     required this.category,
//     required this.description,
//   }) : super(key: key);

//   final String image;
//   final Color color;
//   final String title;
//   final String duration;
//   final String category;
//   final String description;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 120,
//       decoration: BoxDecoration(
//         color: color, // AppColorsData.regular().orangeTints_4,
//         image: DecorationImage(
//           image: AssetImage(image), // 'assets/images/thinking.png'
//           colorFilter: ColorFilter.mode(
//             color, // AppColorsData.regular().orangeTints_4,
//             BlendMode.hardLight,
//           ),
//           fit: BoxFit.fitHeight,
//           alignment: Alignment.bottomRight,
//           repeat: ImageRepeat.noRepeat,
//         ),
//         borderRadius: const AppRadiusData.regular().asBorderRadius().allRegular,
//       ),
//       alignment: Alignment.centerLeft,
//       padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 24.0,
//           horizontal: 16.0,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Text(title, // "Cheek Strentheing",
//                 style: AppTypographyData.primaryWhite().sourceSansProBodyBold),
//             Row(
//               children: <Widget>[
//                 Text(duration, // "4",
//                     style: AppTypographyData.greyShades_6()
//                         .sourceSansProBodySmall),
//                 Text(" mins * ",
//                     style: AppTypographyData.greyShades_6()
//                         .sourceSansProBodySmall),
//                 Text(category, // "Cheek",
//                     style: AppTypographyData.greyShades_6()
//                         .sourceSansProBodySmall),
//               ],
//             ),
//             Text(description, // "strengthe the muscles of the cheek",
//                 style: AppTypographyData.greyShades_6().sourceSansProBodySmall),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ExerciseCard2 extends StatelessWidget {
  const ExerciseCard2({
    Key? key,
    required this.exercise,
    required this.color,
  }) : super(key: key);

  final Exercise exercise;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Text(exercise.name, // "Cheek Strentheing",
                style: AppTypographyData.primaryWhite().sourceSansProBodyBold),
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
            Text(exercise.description, // "strengthe the muscles of the cheek",
                style: AppTypographyData.greyShades_6().sourceSansProBodySmall),
          ],
        ),
      ),
    );
  }
}

class ExercisesList extends StatelessWidget {
  ExercisesList({
    Key? key,
    required this.exercises,
  }) : super(key: key);

  final List<Exercise> exercises;
  final List<Color> colorsList = [
    const Color.fromARGB(255, 255, 190, 174), // light pink
    const Color.fromARGB(255, 174, 191, 255), // light blue
    const Color.fromARGB(255, 209, 193, 255), // light purple
    AppColorsData.regular().orangeTints_4, // light purple
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ExerciseCard2(
            exercise: exercises[index],
            color: colorsList[index % colorsList.length],
          ),
        );
      },
    );
  }
}
