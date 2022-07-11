import 'package:beta_version/screens/exercise/category_tab_list.dart';
import 'package:custom_ui/custom_ui.dart';

class ExercisePage extends StatelessWidget {
  ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsData.regular().primaryWhite,
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x4),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const VerticalGap(num: 16),
            Text(
              'Start here',
              style: AppTypographyData.greyShades_6().quicksandBody,
            ),
            const VerticalGap(num: 16),
            MyTabBar(),
            // const VerticalGap(num: 32),
            // ConstrainedBox(
            //   constraints: const BoxConstraints(
            //     maxHeight: 30,
            //   ),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     physics: const ScrollPhysics(),
            //     child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: const <Widget>[
            //         CategoryList(
            //           categories: Category.allCategories,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // ExercisesList(
            //   exercises: Exercise.allExercises,
            // )
          ],
        ),
      ),
    );
  }
}
