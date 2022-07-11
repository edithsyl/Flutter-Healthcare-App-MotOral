import 'package:beta_version/app_router.dart';
import 'package:beta_version/logic/blocs/export_blocs.dart';
import 'package:beta_version/screens/bottomnav/exercise_page2.dart';
import 'package:beta_version/widgets/exercise_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

import '../../models/category_model.dart';
import '../../models/exercise_model.dart';
import '../../widgets/category_tags.dart';

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
