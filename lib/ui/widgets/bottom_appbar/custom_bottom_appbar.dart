import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import 'bottom_appbar_button.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.black,
      child: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomAppBarButton(icon: Icons.home),
            BottomAppBarButton(icon: Icons.search),
            BottomAppBarButton(icon: Icons.add_circle),
            BottomAppBarButton(icon: Icons.message),
            BottomAppBarButton(icon: Icons.person),
          ],
        ),
      ),
    );
  }
}
