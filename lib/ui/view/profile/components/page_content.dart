import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/view/profile/components/user_info_section.dart';

import '../../../../models/user.dart';
import '../../../utils/ui_helpers.dart';
import '../profile_viewmodel.dart';
import 'tab_section.dart';

class PageContent extends StatelessWidget {
  final ProfileViewModel viewModel;

  const PageContent({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfoSection(user: viewModel.user as User),
        verticalSpace(20),
        TabSection(viewModel: viewModel)
      ],
    );
  }
}
