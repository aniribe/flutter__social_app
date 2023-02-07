import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_viewmodel.dart';
import 'account_name_row.dart';
import 'gradient_container.dart';
import 'image_container.dart';

class AccountCard extends StatelessWidget {
  final SearchViewModel model;
  final int index;

  const AccountCard({
    super.key,
    required this.model,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => model.onCaptionTapHandler(model.users[index]),
      child: Stack(
        children: [
          ImageContainer(
            index: index,
            imagePath: model.users[index].imagePath,
          ),
          const GradientContainer(),
          AccountNameRow(
            imagePath: model.users[index].imagePath,
            index: index,
            userName: model.users[index].userName,
          ),
        ],
      ),
    );
  }
}
