import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List pages = const [HomePage(), BookingPage(), ExercisePage(), ProfilePage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    context.goNamed('/exercise');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Home page"),
        ),
      ), //pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius:
              AppRadiusData.regular().asBorderRadius().verticalRegular,
          boxShadow: [
            AppShadowsData.regular().up,
          ],
        ),
        child: ClipRRect(
          borderRadius:
              AppRadiusData.regular().asBorderRadius().verticalRegular,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColorsData.regular().primaryWhite,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: AppColorsData.regular().primaryHighlightRed,
            unselectedItemColor: AppColorsData.regular().greyTints_3,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Booking'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps), label: 'Exercise'),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Profile'),
            ],
            showSelectedLabels: true,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}
