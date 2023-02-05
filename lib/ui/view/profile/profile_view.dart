import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/view/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';
import 'components/page_content.dart';

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
        child: PageContent(viewModel: viewModel),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();
}
