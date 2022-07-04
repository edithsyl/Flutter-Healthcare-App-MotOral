import 'package:beta_version/widgets/login_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// MYTODO: recreate setting page
class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  context.goNamed('profile');
                },
                icon: const Icon(Icons.arrow_back),
                color: AppColorsData.regular().primaryWhite,
              ),
              const HorizontalGap(num: 50),
              Text(
                'Setting',
                style: AppTypographyData.primaryWhite().quicksandTitle2,
              ),
              const HorizontalGap(num: 50),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                color: AppColorsData.regular().primaryWhite,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: make this appbar looks like the design
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(111),
        child: Container(
          //alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryOrange,
          ),
          child: const AppBarContent(),
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
