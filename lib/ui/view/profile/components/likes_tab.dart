import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';

class LikesTab extends StatelessWidget {
  const LikesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite,
      color: AppColors.white,
    );
  }
}
