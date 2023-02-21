import 'dart:io';
import 'dart:typed_data';

import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/data/exercise_protocal_data.dart';
import 'package:beta_version/models/exercise_category_model.dart';
import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/widgets/alert_dialogue.dart';
import 'package:beta_version/widgets/exercise_widgets/exercise_instruction_row.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:beta_version/widgets/videoplayer/asset_player_widget.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

class ThisExerciseScreen extends StatefulWidget {
  ThisExerciseScreen({required this.category, required this.exercise, Key? key})
      : super(key: key);

  @override
  State<ThisExerciseScreen> createState() => _ThisExerciseScreenState();

  /// The category this person belong to.
  final ExerciseCategory category;

  /// The person to be displayed.
  final Exercise exercise;

  // final String url;
}

class _ThisExerciseScreenState extends State<ThisExerciseScreen> {
  late String url;
  late bool lastRecordingExist;
  @override
  void initState() {
    // Fluttertoast.showToast(msg: 'last recording path: $destination');
    lastRecordingExist = false;
    getVideoUrl();
    super.initState();
  }

  void getVideoUrl() async {
    String exerciseName = widget.exercise.name;
    var currentUser = FirebaseAuth.instance.currentUser;
    var userID = currentUser?.uid;
    // userID ??= 'userid';
    final destination = 'public/$userID/$exerciseName';

    final storageRef = FirebaseStorage.instance.ref();
    String videoUrl;

    try {
      videoUrl = await storageRef.child(destination).getDownloadURL();
      // print(videoUrl)
      lastRecordingExist = true;
    } catch (e) {
      videoUrl = '';
      print('error occured');
    }
    // Fluttertoast.showToast(msg: videoUrl);

    // final appDocDir = await getApplicationDocumentsDirectory();
    // final filePath = "${appDocDir.absolute}/$exerciseName";
    // final file = File(filePath);
    // var isThere = await file.exists();
    // print(isThere ? 'exists' : 'non-existent');

    url = videoUrl;
  }

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
              video_path: 'assets/videos/test_exercise.mp4',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.exercise.name,
                              style: AppTypographyData.primaryOrange()
                                  .quicksandTitle2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                CustomIcons.streakfire,
                                color: AppColorsData.regular().primaryOrange,
                              ),
                              const HorizontalGap(num: 2),
                              Text(
                                '0',
                                style: AppTypographyData.primaryOrange()
                                    .quicksandTitle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const VerticalGap(num: 4),
                      Text(
                        '${widget.exercise.duration} mins * ${widget.category.name}',
                        style: AppTypographyData.greyShades_6().quicksandBody,
                      ),
                      const VerticalGap(num: 12),
                      Text(
                        widget.exercise.description,
                        style:
                            AppTypographyData.greyShades_5().sourceSansProBody,
                      ),
                      const VerticalGap(num: 40),
                      Text(
                        'Instructions',
                        style: AppTypographyData.primaryOrange().quicksandBody,
                      ),
                      const VerticalGap(num: 24),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(
                            parent: NeverScrollableScrollPhysics()),
                        scrollDirection: Axis.vertical,
                        itemCount: ExerciseProtocal.getlength(),
                        itemBuilder: (context, index) {
                          return ExerciseInstructionRow(
                            image: AssetImage(
                                ExerciseProtocal.id(index + 1).image),
                            video: ExerciseProtocal.id(index + 1).vid,
                            index: index + 1,
                            title: ExerciseProtocal.id(index + 1).name,
                            description:
                                ExerciseProtocal.id(index + 1).description,
                          );
                        },
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LongAppOutlineButton(
                            title: 'view last recording',
                            onPressed: () => showNetworkVideoDialog(
                              // context.goNamed('last_recording');
                              context,
                              'Last Recording',
                              url,
                              MediaQuery.of(context).size.width * 0.8,
                              'Close',
                              () => Navigator.of(context).pop(),
                            ),
                          ),
                          const HorizontalGap(num: 16),
                          LongAppSolidButton(
                            title: 'start',
                            onPressed: () {
                              context.go('/camera/${widget.exercise.name}');
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  showVideo() => showNetworkVideoDialog(
        // context.goNamed('last_recording');
        context,
        'Last Recording',
        url,
        MediaQuery.of(context).size.width * 0.8,
        'Close',
        () => Navigator.of(context).pop(),
      );
}
