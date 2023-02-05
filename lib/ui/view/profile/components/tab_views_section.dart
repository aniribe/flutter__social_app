import 'package:flutter/material.dart';

import '../../../../models/post.dart';
import '../../../utils/ui_helpers.dart';
import 'content_tab.dart';
import 'likes_tab.dart';

class TabViewsSection extends StatelessWidget {
  final List<Post> userPosts;
  final Future<void> Function(Post) onDoubleTap;

  const TabViewsSection({
    super.key,
    required this.userPosts,
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      child: TabBarView(
        children: [
          ContentTab(
            userPosts: userPosts,
            onDoubleTap: onDoubleTap,
          ),
          const LikesTab(),
        ],
      ),
    );
  }
}
