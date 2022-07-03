import 'package:beta_version/logic/cubits/bottomnav/nav_bar_items.dart';
import 'package:beta_version/logic/cubits/bottomnav/navigation_cubit.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Setting page"),
    );
  }
}
