import 'package:flutter/material.dart';
import 'package:social_media_app_ui/consts/app_colors.dart';
import 'package:social_media_app_ui/consts/string_consts.dart';
import 'package:stacked/stacked.dart';

import '../widgets/app_bar/custom_appbar.dart';
import '../widgets/bottom_appbar/custom_bottom_appbar.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
