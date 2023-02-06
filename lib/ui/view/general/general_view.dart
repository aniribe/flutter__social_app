import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_ui/consts/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/bottom_appbar/custom_bottom_appbar.dart';
import '../home/home_view.dart';
import '../search/search_view.dart';
import 'general_viewmodel.dart';

class GeneralView extends StatelessWidget {
  const GeneralView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => GeneralViewModel(),
      onViewModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.black,
        bottomNavigationBar: CustomBottomAppBar(
          onIconButtonPressed: model.onButtonPressedHandler,
          bottomButtons: model.bottomButtons as List<bool>,
        ),
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 200),
          reverse: model.reverse,
          transitionBuilder: (Widget child, Animation<double> animation,
                  Animation<double> secondAnimation) =>
              SharedAxisTransition(
            fillColor: AppColors.black,
            animation: animation,
            secondaryAnimation: secondAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child,
          ),
          child: getViewForIndex(model.currentIndex),
        ),
      ),
    );
  }
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const SearchView();
    case 2:
      return const HomeView();
    case 3:
      return const HomeView();

    default:
      return const HomeView();
  }
}
