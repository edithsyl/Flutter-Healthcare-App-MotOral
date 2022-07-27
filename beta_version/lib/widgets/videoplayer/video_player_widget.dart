import 'package:beta_version/app_router.dart';
import 'package:flutter/material.dart';
import 'basic_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      controller.value.isInitialized // controller != null &&
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : SizedBox(
              height: 200,
              child: Center(
                  child: CircularProgressIndicator(
                color: AppColorsData.regular().primaryOrange,
              )),
            );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(controller: controller)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );
}
