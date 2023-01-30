import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/video_action_button.dart';
import 'package:video_player/video_player.dart';

import '../../../consts/app_colors.dart';
import '../../utils/ui_helpers.dart';

class VideoActionsSection extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoActionsSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: controller.value.size.height,
        width: screenWidth(context) * 0.2,
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const VideoActionButton(
              icon: Icons.favorite,
              text: '11.4k',
            ),
            verticalSpace(13),
            const VideoActionButton(
              icon: Icons.comment,
              text: '1.4k',
            ),
            verticalSpace(13),
            const VideoActionButton(
              icon: Icons.forward_rounded,
              text: '440',
            ),
          ],
        ),
      ),
    );
  }
}
