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
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
          const VerticalGap(num: 12),
          exerciseCard_1(),
        ],
      ),
    );
  }
}
