import 'package:flutter/material.dart';
import 'package:beta_version/assets/custom_icons.dart';

final List<BottomNavigationBarItem> bNavItems = [
  const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Icon(Icons.apps),
    ),
    label: 'News',
  ),
  const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Icon(CustomIcons.exercise),
    ),
    label: 'Exercise',
  ),
  const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Icon(CustomIcons.home),
    ),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Icon(CustomIcons.people),
    ),
    label: 'People',
  ),
  const BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Icon(CustomIcons.profile),
    ),
    label: 'Profile',
  ),
];
