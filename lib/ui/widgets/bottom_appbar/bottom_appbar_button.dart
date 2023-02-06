import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';

class BottomAppBarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isActive;

  const BottomAppBarButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: isActive ? AppColors.white : AppColors.white.withOpacity(0.3),
      iconSize: 30,
    );
  }
}
