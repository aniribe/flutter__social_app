import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../search_viewmodel.dart';
import 'accouont_card.dart';

class PageContent extends StatelessWidget {
  final SearchViewModel model;

  const PageContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      itemCount: model.users.length,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      itemBuilder: (context, index) {
        return AccountCard(model: model, index: index);
      },
    );
  }
}
