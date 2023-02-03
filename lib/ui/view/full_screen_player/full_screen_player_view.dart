import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/custom_video_player.dart';
import 'package:stacked/stacked.dart';

import '../../../models/post.dart';
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
      body: CustomVideoPlayer(
        post: viewModel.post as Post,
        onCaptionTap: viewModel.onCaptionTapHandler,
      ),
    );
  }

  @override
  FullScreenVideoPlayerViewModel viewModelBuilder(BuildContext context) =>
      FullScreenVideoPlayerViewModel();
}
