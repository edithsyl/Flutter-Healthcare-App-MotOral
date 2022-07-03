import 'package:beta_version/logic/cubits/bottomnav/nav_bar_items.dart';
import 'package:beta_version/logic/cubits/bottomnav/navigation_cubit.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '_bottomnav_pages.dart';
import 'bnav_items.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.news) {
          return NewsPage();
        } else if (state.navbarItem == NavbarItem.exercise) {
          return ExercisePage();
        } else if (state.navbarItem == NavbarItem.home) {
          return HomePage();
        } else if (state.navbarItem == NavbarItem.people) {
          return PeoplePage();
        } else if (state.navbarItem == NavbarItem.profile) {
          return ProfilePage();
        } else {
          return const Text('error: _buildBody');
        }
      }), //pages[currentIndex],
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
            child: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
                return BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: AppColorsData.regular().primaryWhite,
                  onTap: (index) => BlocProvider.of<NavigationCubit>(context)
                      .getNavBarItem(index),
                  currentIndex: state.index,
                  selectedItemColor:
                      AppColorsData.regular().primaryHighlightRed,
                  unselectedItemColor: AppColorsData.regular().greyTints_3,
                  selectedLabelStyle:
                      AppTypographyData.greyShades_3().sourceSansProBody1,
                  unselectedLabelStyle:
                      AppTypographyData.greyShades_2().sourceSansProBody1,
                  elevation: 0,
                  items: bNavItems,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
