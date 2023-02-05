import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../../models/post.dart';
import '../profile_viewmodel.dart';
import 'tab_views_section.dart';

class TabSection extends StatelessWidget {
  final ProfileViewModel viewModel;

  const TabSection({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            indicatorColor: AppColors.pink,
            tabs: [
              Tab(
                icon: Icon(Icons.grid_view_rounded),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              )
            ],
          ),
          TabViewsSection(
            userPosts: viewModel.userPosts as List<Post>,
            onDoubleTap: viewModel.onVideoDoubleTapHandler,
          ),
        ],
      ),
    );
  }
}
