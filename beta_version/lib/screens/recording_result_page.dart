import 'package:beta_version/widgets/alert_dialogue.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

/// make [login] & [signup] button using long button from [custom_ui] package
/// use context.go() from gorouter to navigate to login screen and registration screen
class RecordingResultPage extends StatefulWidget {
  const RecordingResultPage({Key? key}) : super(key: key);

  @override
  State<RecordingResultPage> createState() => _RecordingResultPageState();
}

class _RecordingResultPageState extends State<RecordingResultPage> {
  late String url;
  @override
  void initState() {
    // Fluttertoast.showToast(msg: 'last recording path: $destination');
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
  Widget build(BuildContext context) {
    // this is an example, plz change it
    return Scaffold(
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CurvyAppBarPainter(),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(AppSpacingData.regular().x5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColorsData.regular().primaryWhite,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/motoral.png'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomRight,
                      repeat: ImageRepeat.noRepeat,
                    ),
                  ),
                ),
                const VerticalGap(num: 32),
                Text('you have completed one exercise,',
                    style: AppTypographyData.greyShades_5().sourceSansProBody),
                Text(
                  'Well Done!',
                  style:
                      AppTypographyData.primaryOrange().sourceSansProBodyBold,
                ),
                const VerticalGap(num: 500),
                // LongAppOutlineButton(
                //     title: 'VIEW RECORDING',
                //     onPressed: () => {
                //           getVideoUrl(),
                //           showNetworkVideoDialog(
                //             // context.goNamed('last_recording');
                //             context,
                //             'Last Recording',
                //             url, // TODO: change to last recording
                //             MediaQuery.of(context).size.width * 0.8,
                //             'Close',
                //             () => Navigator.of(context).pop(),
                //           ),
                //         }),
                const VerticalGap(num: 16),
                LongAppOutlineButton(
                    title: 'TRY AGAIN',
                    onPressed: () {
                      context.goNamed('camera');
                    }),
                const VerticalGap(num: 16),
                LongAppSolidButton(
                    title: 'BACK TO EXERCISE',
                    onPressed: () {
                      context.goNamed('exercise');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
