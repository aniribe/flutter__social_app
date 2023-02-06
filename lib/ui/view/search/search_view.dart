import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_media_app_ui/consts/string_consts.dart';
import 'package:social_media_app_ui/ui/utils/ui_helpers.dart';
import 'package:social_media_app_ui/ui/view/search/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';

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
        body: MasonryGridView.count(
          shrinkWrap: true,
          itemCount: model.users.length,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => model.onCaptionTapHandler(model.users[index]),
              child: Stack(
                children: [
                  Container(
                    height: index == 0 ? 250 : 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(model.users[index].imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned.fill(
                      child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, AppColors.black],
                        stops: [0.4, 1.0],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  )),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(model.users[index].imagePath),
                        ),
                        horizontalSpace(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.users[index].userName,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                            ),
                            verticalSpace(5),
                            Text(
                              '2 mins ago',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.white,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
