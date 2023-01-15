import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:beta_version/widgets/videoplayer/asset_player_widget.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LastRecordingPage extends StatefulWidget {
  const LastRecordingPage({super.key});

  @override
  State<LastRecordingPage> createState() => _LastRecordingPageState();
}

class _LastRecordingPageState extends State<LastRecordingPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            decoration: BoxDecoration(
              color: AppColorsData.regular().primaryOrange,
            ),
            child: AppBarContent(
              title: 'Exercise',
              leftOnPressed: () {
                //go back to exercise page
                context.goNamed('exercise');
              },
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AssetPlayerWidget(
              video_path:
                  'assets/videos/test_exercise.mp4', // TODO:change to last recording
            ),
            const VerticalGap(num: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('This is your last recording',
                          style:
                              AppTypographyData.greyShades_6().quicksandBody),
                      const VerticalGap(num: 4),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
