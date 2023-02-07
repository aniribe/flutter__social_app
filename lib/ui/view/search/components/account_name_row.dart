import 'package:flutter/material.dart';

import '../../../utils/ui_helpers.dart';
import 'user_name_and_time.dart';

class AccountNameRow extends StatelessWidget {
  final String imagePath;
  final int index;
  final String userName;

  const AccountNameRow({
    super.key,
    required this.imagePath,
    required this.index,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: 10,
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(imagePath)),
          horizontalSpace(10),
          UserNameAndTime(userName: userName),
        ],
      ),
    );
  }
}
