import 'package:flutter/material.dart';
import 'package:social_media_app_ui/consts/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../models/post.dart';
import '../../widgets/full_screen_video_player.dart';
import 'full_screen_player_viewmodel.dart';

class FullScreenVideoPlayerView
    extends StackedView<FullScreenVideoPlayerViewModel> {
  const FullScreenVideoPlayerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FullScreenVideoPlayerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          FullScreenVideoPlayer(
            post: viewModel.post as Post,
            onCaptionTap: viewModel.onCaptionTapHandler,
          ),
          const Positioned(
            top: 60,
            left: 25,
            child: BackButton(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  FullScreenVideoPlayerViewModel viewModelBuilder(BuildContext context) =>
      FullScreenVideoPlayerViewModel();
}
