import 'package:flutter/material.dart';
import 'package:social_media_app_ui/app/app.dart';
import 'package:social_media_app_ui/consts/string_consts.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';
import 'package:social_media_app_ui/ui/view/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';
import 'components/user_info.dart';

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
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.white,
                  backgroundImage:
                      AssetImage(viewModel.user?.imagePath as String),
                ),
                verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      UserInfo(
                        type: StringConsts.following,
                        value: '${viewModel.user?.following}',
                      ),
                      UserInfo(
                        type: StringConsts.followers,
                        value: '${viewModel.user?.followers}',
                      ),
                      UserInfo(
                        type: StringConsts.likes,
                        value: '${viewModel.user?.likes}',
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF006E),
                        fixedSize: Size(200, 50),
                      ),
                      child: Text(
                        StringConsts.follow,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    horizontalSpace(15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        fixedSize: const Size(50, 50),
                      ),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();
}
