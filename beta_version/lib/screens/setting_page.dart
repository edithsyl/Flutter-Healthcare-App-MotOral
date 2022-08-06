import 'package:beta_version/widgets/login_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/top_app_bar.dart';

// TODO: recreate setting page

/// this is [_SettingPageState]

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO:  test app bar here
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryOrange,
          ),
          child: AppBarContent(
            title: 'Setting',
            leftOnPressed: () {
              context.goNamed('profile');
            },
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('Setting page'),
                  Divider(
                    color: AppColorsData.regular().primaryUnavaliableGrey,
                    thickness: .5,
                  ),
                  const VerticalGap(num: 25),
                  LogoutButton(),
                  const VerticalGap(num: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
