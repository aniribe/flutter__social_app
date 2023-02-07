import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, AppColors.black],
          stops: [0.4, 1.0],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
    ));
  }
}
