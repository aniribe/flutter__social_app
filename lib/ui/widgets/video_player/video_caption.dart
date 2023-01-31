import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import '../../utils/ui_helpers.dart';

class VideoCaption extends StatelessWidget {
  final String userName;
  final String caption;
  final VoidCallback onTap;

  const VideoCaption({
    super.key,
    required this.userName,
    required this.caption,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 125,
          width: screenWidth(context) * 0.75,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@$userName}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              verticalSpace(5),
              Text(
                caption,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.white,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
