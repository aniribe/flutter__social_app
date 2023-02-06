import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import 'bottom_appbar_button.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function(BuildContext, int) onIconButtonPressed;
  final List<bool> bottomButtons;

  const CustomBottomAppBar({
    super.key,
    required this.onIconButtonPressed,
    required this.bottomButtons,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.black,
      child: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomAppBarButton(
              icon: Icons.home,
              onPressed: () => onIconButtonPressed(context, 0),
              isActive: bottomButtons[0],
            ),
            BottomAppBarButton(
              icon: Icons.search,
              onPressed: () => onIconButtonPressed(context, 1),
              isActive: bottomButtons[1],
            ),
            BottomAppBarButton(
              icon: Icons.add_circle,
              onPressed: () => onIconButtonPressed(context, 2),
              isActive: bottomButtons[2],
            ),
            BottomAppBarButton(
              icon: Icons.message,
              onPressed: () => onIconButtonPressed(context, 3),
              isActive: bottomButtons[3],
            ),
            BottomAppBarButton(
              icon: Icons.person,
              onPressed: () => onIconButtonPressed(context, 4),
              isActive: bottomButtons[4],
            ),
          ],
        ),
      ),
    );
  }
}
