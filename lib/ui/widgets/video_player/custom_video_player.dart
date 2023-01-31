import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/video_actions_section.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/video_caption.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../consts/app_colors.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';

class CustomVideoPlayer extends StatefulWidget {
  final Post post;
  final Future<void> Function(User) onCaptionTap;

  const CustomVideoPlayer({
    Key? key,
    required this.post,
    required this.onCaptionTap,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
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
    return VisibilityDetector(
      key: Key(controller.dataSource),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction >= 0.5) {
          controller.play();
        } else {
          if (mounted) {
            controller.pause();
          }
        }
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (controller.value.isPlaying) {
              controller.pause();
            } else {
              controller.play();
            }
          });
        },
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
                      AppColors.black.withOpacity(0.8),
                      Colors.transparent,
                      Colors.transparent,
                      AppColors.black,
                    ],
                    stops: const [0, 0.2, 0.8, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                )),
              ),
              VideoCaption(
                userName: widget.post.user.userName,
                caption: widget.post.caption,
                onTap: () => widget.onCaptionTap(widget.post.user),
              ),
              VideoActionsSection(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
