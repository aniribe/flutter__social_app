import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../utils/ui_helpers.dart';

class UserInfo extends StatelessWidget {
  final String type;
  final String value;

  const UserInfo({
    super.key,
    required this.value,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          verticalSpace(5),
          Text(
            type,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade200,
                  letterSpacing: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
