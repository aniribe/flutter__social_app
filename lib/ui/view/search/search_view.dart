import 'package:flutter/material.dart';
import 'package:social_media_app_ui/consts/string_consts.dart';
import 'package:social_media_app_ui/ui/view/search/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';
import 'components/page_content.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            StringConsts.discover,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: PageContent(model: model),
      ),
    );
  }
}
