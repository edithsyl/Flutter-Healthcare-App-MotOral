import 'package:custom_ui/source/theme/data/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'video_player_widget.dart';
import 'package:video_player/video_player.dart';

// FIXME: volumn button

class NetworkPlayerWidget2 extends StatefulWidget {
  final String video_path;

  const NetworkPlayerWidget2({
    Key? key,
    required this.video_path,
  }) : super(key: key);

  @override
  _NetworkPlayerWidget2State createState() => _NetworkPlayerWidget2State();
}

class _NetworkPlayerWidget2State extends State<NetworkPlayerWidget2> {
  late VideoPlayerController controller; // added ?

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(widget.video_path)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play()); // added !
  }

  @override
  void dispose() {
    controller.dispose();
    setAllOrientations();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final isMuted = controller.value.volume == 0;

    return VideoPlayerWidget(controller: controller);

    // Column(
    //   children: [
    //     VideoPlayerWidget(controller: controller),
    //     const SizedBox(height: 32),
    //     if (controller != null && controller.value.isInitialized)
    //       CircleAvatar(
    //         radius: 30,
    //         backgroundColor: AppColorsData.regular().orangeTints_2,
    //         child: IconButton(
    //           icon: Icon(
    //             isMuted ? Icons.volume_mute : Icons.volume_up,
    //             color: AppColorsData.regular().primaryWhite,
    //           ),
    //           onPressed: () => controller.setVolume(isMuted ? 1 : 0),
    //         ),
    //       )
    //   ],
    // );
  }
}

Future setLandScape() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  // await Wakelock.enable();
}

Future setAllOrientations() async {
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  // await Wakelock.disable();
}
