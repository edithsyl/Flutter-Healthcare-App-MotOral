import 'package:beta_version/app_router.dart';

import '../../models/exercise_model.dart';
import 'category_exerciseslist.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;
  //late List<Exercise> _allExercises;
  //List<Exercise> filterdExercises = [];

  final List<Tab> categoryTabs = const [
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

  // List<Exercise> _filteredExercises(value) {
  //   return _allExercises.where((exercise) => exercise.name == value).toList();
  // }

  @override
  void initState() {
    //_allExercises = Exercise.allExercises;
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
