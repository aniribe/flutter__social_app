import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../../models/user.dart';
import '../../../utils/ui_helpers.dart';
import 'account_info.dart';
import 'follow_buttons_section.dart';

class UserInfoSection extends StatelessWidget {
  final User user;

  const UserInfoSection({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.white,
          backgroundImage: AssetImage(user.imagePath),
        ),
        verticalSpace(20),
        ProfileInformation(user: user),
        verticalSpace(20),
        const FollowButtonsSection(),
      ],
    );
  }
}
