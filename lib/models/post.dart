import 'package:social_media_app_ui/enums/enums.dart';
import 'package:social_media_app_ui/models/user.dart';

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post({
    required this.id,
    required this.user,
    required this.type,
    required this.caption,
    required this.assetPath,
  });
}
