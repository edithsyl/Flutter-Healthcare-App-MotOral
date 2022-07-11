import 'package:beta_version/app_router.dart';
import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/widgets/exercise_card.dart';

class ExerciseList extends StatefulWidget {
  ExerciseList({
    Key? key,
    required this.thisList,
  }) : super(key: key);

  final List<Exercise> thisList;

  @override
  State<ExerciseList> createState() => ExerciseListState();
}

class ExerciseListState extends State<ExerciseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        itemCount: widget.thisList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ExerciseCard2(
              exercise: widget.thisList[index],
              color: AppColorsData.regular().paletteColorsList[
                  index % AppColorsData.regular().paletteColorsList.length],
            ),
          );
        },
      ),
    );
  }
}
