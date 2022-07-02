import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'nav_bar_items.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 2));

  void getNavBarItem(int i) {
    switch (i) {
      case 0:
        emit(NavigationState(NavbarItem.news, 0));
        break;
      case 1:
        emit(NavigationState(NavbarItem.exercise, 1));
        break;
      case 2:
        emit(NavigationState(NavbarItem.home, 2));
        break;
      case 3:
        emit(NavigationState(NavbarItem.people, 3));
        break;
      case 4:
        emit(NavigationState(NavbarItem.profile, 4));
        break;
    }
  }
}
