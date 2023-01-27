import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/string_consts.dart';

class AppBarButton extends StatelessWidget {
  final String text;

  const AppBarButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          fixedSize: const Size(100, 50)
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.white,),
      ),
    );
  }
}