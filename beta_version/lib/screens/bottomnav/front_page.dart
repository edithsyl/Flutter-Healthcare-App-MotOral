import 'package:beta_version/assets/custom_icons.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import '_bottomnav_pages.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

Widget _buildBody(int index) {
  switch (index) {
    case 0:
      return NewsPage();
    case 1:
      return ExercisePage();
    case 2:
      return HomePage();
    case 3:
      return PeoplePage();
    case 4:
      return ProfilePage();
    default:
      return const Text('error: _buildBody');
  }
}

class _FrontPageState extends State<FrontPage> {
  //List pages = const [HomePage(), BookingPage(), ExercisePage(), ProfilePage()];

  int currentIndex = 2;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(currentIndex), //pages[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: AppColorsData.regular().primaryWhite,
          borderRadius:
              const AppRadiusData.regular().asBorderRadius().verticalRegular,
          boxShadow: [
            AppShadowsData.regular().up,
          ],
        ),
        child: ClipRRect(
          borderRadius:
              const AppRadiusData.regular().asBorderRadius().verticalRegular,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColorsData.regular().primaryWhite,
              onTap: onTap,
              currentIndex: currentIndex,
              selectedItemColor: AppColorsData.regular().primaryHighlightRed,
              unselectedItemColor: AppColorsData.regular().greyTints_3,
              selectedLabelStyle:
                  AppTypographyData.greyShades_3().sourceSansProBody1,
              unselectedLabelStyle:
                  AppTypographyData.greyShades_2().sourceSansProBody1,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'News'),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Icon(CustomIcons.exercise),
                  ),
                  label: 'Exercise',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Icon(CustomIcons.home),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Icon(CustomIcons.people),
                  ),
                  label: 'People',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Icon(CustomIcons.profile),
                  ),
                  label: 'Profile',
                ),
              ],
              showSelectedLabels: true,
              showUnselectedLabels: true,
            ),
          ),
        ),
      ),
    );
  }
}
