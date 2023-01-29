import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';
import 'package:video_player/video_player.dart';

import '../../../consts/app_colors.dart';
import '../../../models/post.dart';

class CustomVideoPlayer extends StatefulWidget {
  final Post post;

  const CustomVideoPlayer({
    Key? key,
    required this.post,
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
                  stops: [0, 0.2, 0.8, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 125,
                width: screenWidth(context) * 0.75,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@${widget.post.user.userName}',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    verticalSpace(5),
                    Text(
                      widget.post.caption,
                      maxLines: 3,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
