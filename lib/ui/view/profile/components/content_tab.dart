import 'package:flutter/cupertino.dart';

import '../../../../models/post.dart';
import '../../../widgets/video_player_preview/custom_video_player_preview.dart';

class ContentTab extends StatelessWidget {
  final List<Post> userPosts;
  final Future<void> Function(Post) onDoubleTap;

  const ContentTab({
    super.key,
    required this.userPosts,
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: userPosts.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 9 / 16),
      itemBuilder: (context, index) {
        return CustomVideoPlayerPreview(
          post: userPosts[index],
          onDoubleTap: onDoubleTap,
        );
      },
    );
  }
}
