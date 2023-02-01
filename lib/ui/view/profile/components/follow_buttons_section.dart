import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../utils/ui_helpers.dart';

class FollowButtonsSection extends StatelessWidget {
  const FollowButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF006E),
            fixedSize: const Size(200, 50),
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
    );
  }
}
