import 'package:beta_version/app_router.dart';
import 'package:beta_version/logic/blocs/export_blocs.dart';
import 'package:beta_version/widgets/exercise_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

import '../../models/category_model.dart';
import '../../models/exercise_model.dart';
import '../../widgets/category_tags.dart';
import '../../widgets/top_app_bar.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;
  late List<Exercise> _allExercises;
  List<Exercise> filterdExercises = [];

  final List<Tab> categoryTabs = [
    Tab(
      text: 'Cheek',
    ),
    Tab(
      text: 'Jaw',
    ),
    Tab(
      text: 'Lip',
    ),
    Tab(
      text: 'Tongue',
    ),
  ];

  // final List<Color> paletteColorsList = [
  //   const Color.fromARGB(255, 255, 190, 174), // light pink
  //   const Color.fromARGB(255, 174, 191, 255), // light blue
  //   const Color.fromARGB(255, 209, 193, 255), // light purple
  //   AppColorsData.regular().orangeTints_4, // light purple
  // ];

  // List<Exercise> _filteredExercises(value) {
  //   return _allExercises.where((exercise) => exercise.name == value).toList();
  // }

  @override
  void initState() {
    _allExercises = Exercise.allExercises;
    // initialise your tab controller here
    _tabController = TabController(
      length: 4,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsData.regular().primaryWhite,
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 35,
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                ),
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                labelColor: AppColorsData.regular().primaryWhite,
                labelStyle: AppTypographyData.primaryWhite().quicksandBodySmall,
                unselectedLabelColor: AppColorsData.regular().greyShades_6,
                unselectedLabelStyle:
                    AppTypographyData.greyShades_5().quicksandBodySmall,
                tabs: categoryTabs,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                ExerciseList(thisList: Exercises.cheek().getList()),
                ExerciseList(thisList: Exercises.jaw().getList()),
                ExerciseList(thisList: Exercises.lip().getList()),
                ExerciseList(thisList: Exercises.tongue().getList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
