import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import '../../assets/custom_icons.dart';
import '_bottomnav_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Widget _buildBody(int index) {
  switch (index) {
    case 0:
      return NewsPage();
    case 1:
      return ExercisePage();
    case 2:
      return FrontPage();
    case 3:
      return BookingPage();
    case 4:
      return ProfilePage();
    default:
      return const Text('error: _buildBody');
  }
}

class _HomePageState extends State<HomePage> {
  //List pages = const [HomePage(), BookingPage(), ExercisePage(), ProfilePage()];

  int currentIndex = 0;

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
        // margin: EdgeInsets.symmetric(
        //   vertical: AppSpacingData.regular().x1,
        // ),
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
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacingData.regular().x2,
              vertical: AppSpacingData.regular().x0_5,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColorsData.regular().primaryWhite,
              onTap: onTap,
              currentIndex: currentIndex,
              selectedItemColor: AppColorsData.regular().primaryHighlightRed,
              unselectedItemColor: AppColorsData.regular().greyTints_3,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'News'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.exercise), label: 'Exercise'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.people), label: 'Booking'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.profile), label: 'Profile'),
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
