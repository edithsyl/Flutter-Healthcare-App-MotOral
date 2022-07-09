import 'package:beta_version/app_router.dart';
import 'package:beta_version/widgets/exercise_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

class ExercisePage extends StatelessWidget {
  ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MYTODO: make exercise cards
    return Container(
      color: AppColorsData.regular().primaryWhite,
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x4),
      child: ListView(
        children: <Widget>[
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeTints_4,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeTints_2,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().blueHighlightTint_3,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeAnalogousYellow,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeSquarePinkPurple,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeTints_4,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().orangeTints_2,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
          const VerticalGap(num: 12),
          ExerciseCard1(
            image: 'assets/images/thinking.png',
            color: AppColorsData.regular().blueHighlightTint_3,
            title: "Cheek Strentheing",
            duration: "4",
            category: "Cheek",
            description: "strengthe the muscles of the cheek",
          ),
        ],
      ),
    );
  }
}
