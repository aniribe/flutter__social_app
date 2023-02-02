import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/video_actions_section.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/video_caption.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../consts/app_colors.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';

class CustomVideoPlayerPreview extends StatefulWidget {
  final Post post;
  // final Future<void> Function(User) onCaptionTap;

  const CustomVideoPlayerPreview({
    Key? key,
    required this.post,
    // required this.onCaptionTap,
  }) : super(key: key);

  @override
  State<CustomVideoPlayerPreview> createState() =>
      _CustomVideoPlayerPreviewState();
}

class _CustomVideoPlayerPreviewState extends State<CustomVideoPlayerPreview> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.post.assetPath);
    controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (controller.value.isPlaying) {
            controller.pause();
          } else {
            controller.play();
          }
        });
      },
      onDoubleTap: ,
      child: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(controller),
            Positioned.fill(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    AppColors.black.withOpacity(0.5),
                    AppColors.black,
                  ],
                  stops: const [0, 0.6, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Row(
                children: [
                  const Icon(
                    Icons.play_arrow,
                    color: AppColors.white,
                  ),
                  horizontalSpace(5),
                  Text(
                    '1.4k',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
