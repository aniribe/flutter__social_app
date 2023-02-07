import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../utils/ui_helpers.dart';

class UserNameAndTime extends StatelessWidget {
  final String userName;

  const UserNameAndTime({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
        ),
        verticalSpace(5),
        Text(
          '2 mins ago',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.white,
              ),
        ),
      ],
    );
  }
}
