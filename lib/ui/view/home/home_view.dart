import 'package:flutter/material.dart';
import 'package:social_media_app_ui/consts/app_colors.dart';
import 'package:social_media_app_ui/consts/string_consts.dart';
import 'package:social_media_app_ui/ui/widgets/video_player/custom_video_player.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';

import '../../../data/lists.dart';
import '../../widgets/app_bar/custom_appbar.dart';
import '../../widgets/bottom_appbar/custom_bottom_appbar.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: AppColors.black,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: Lists.posts.map((post) {
            return CustomVideoPlayer(
              post: post,
              onCaptionTap: viewModel.onCaptionTapHandler,
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
