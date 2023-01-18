import 'dart:io';
import 'dart:typed_data';

import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/models/exercise_category_model.dart';
import 'package:beta_version/models/exercise_model_new.dart';
import 'package:beta_version/widgets/alert_dialogue.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:beta_version/widgets/videoplayer/asset_player_widget.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

class ThisShortExerciseScreen extends StatefulWidget {
  ThisShortExerciseScreen(
      {required this.category, required this.exercise, Key? key})
      : super(key: key);

  @override
  State<ThisShortExerciseScreen> createState() =>
      _ThisShortExerciseScreenState();

  /// The category this person belong to.
  final ExerciseCategory2 category;

  /// The person to be displayed.
  final Exercise_new exercise;

  // final String url;
}

class _ThisShortExerciseScreenState extends State<ThisShortExerciseScreen> {
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
    String exerciseName = 'ex1';
    var currentUser = FirebaseAuth.instance.currentUser;
    var userID = currentUser?.uid;
    userID ??= 'userid';
    final destination = 'public/$userID/$exerciseName';

    final storageRef = FirebaseStorage.instance.ref();
    String videoUrl;

    try {
      videoUrl = await storageRef.child(destination).getDownloadURL();
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
            AssetPlayerWidget(
              video_path: widget.exercise.exerciseInstruction.vid,
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
                        widget.exercise.exerciseInstruction.description,
                        style:
                            AppTypographyData.greyShades_5().sourceSansProBody,
                      ),
                      const VerticalGap(num: 40),
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
                              context.goNamed('camera');
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
