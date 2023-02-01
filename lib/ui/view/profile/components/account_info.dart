import 'package:flutter/cupertino.dart';
import 'package:social_media_app_ui/ui/view/profile/components/user_info.dart';

import '../../../../consts/string_consts.dart';
import '../../../../models/user.dart';

class ProfileInformation extends StatelessWidget {
  final User user;

  const ProfileInformation({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UserInfo(
            type: StringConsts.following,
            value: '${user.following}',
          ),
          UserInfo(
            type: StringConsts.followers,
            value: '${user.followers}',
          ),
          UserInfo(
            type: StringConsts.likes,
            value: '${user.likes}',
          ),
        ],
      ),
    );
  }
}
