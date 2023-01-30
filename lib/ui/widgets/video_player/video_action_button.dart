import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';

import '../../../consts/app_colors.dart';

class VideoActionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const VideoActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const ShapeDecoration(
            color: AppColors.black,
            shape: CircleBorder(),
          ),
          child: IconButton(
            splashColor: AppColors.white.withOpacity(0.3),
            onPressed: () {},
            icon: Icon(
              icon,
              color: AppColors.white,
            ),
          ),
        ),
        verticalSpace(5),
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
