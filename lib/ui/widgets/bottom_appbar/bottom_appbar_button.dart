import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';

class BottomAppBarButton extends StatelessWidget {
  final IconData icon;

  const BottomAppBarButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: AppColors.white,
      iconSize: 30,
    );
  }
}
