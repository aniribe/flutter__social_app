import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';
import 'package:social_media_app_ui/ui/view/profile/profile_viewmodel.dart';
import 'package:social_media_app_ui/ui/widgets/video_player_preview/custom_video_player_preview.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';
import 'components/user_info_section.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ProfileViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '@${viewModel.user?.userName}',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserInfoSection(user: viewModel.user as User),
            verticalSpace(20),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: AppColors.pink,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_view_rounded),
                      ),
                      Tab(
                        icon: Icon(Icons.favorite),
                      )
                    ],
                  ),
                  Container(
                    height: screenHeight(context),
                    child: TabBarView(
                      children: [
                        //First Tab
                        GridView.builder(
                          itemCount: viewModel.userPosts?.length,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 9 / 16),
                          itemBuilder: (context, index) {
                            return CustomVideoPlayerPreview(
                              post: viewModel.userPosts?[index] as Post,
                              onDoubleTap: viewModel.onVideoDoubleTapHandler,
                            );
                          },
                        ),

                        //Second Tab
                        const Icon(Icons.favorite),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();
}
