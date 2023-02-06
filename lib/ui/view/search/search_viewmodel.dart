import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../data/lists.dart';
import '../../../models/user.dart';
import '../../../service/profile_service.dart';

class SearchViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _profileService = locator<ProfileService>();

  List<User> users = Lists.users;

  Future<void> onCaptionTapHandler(User user) async {
    setChosenUser(user);
    getUserPosts();
    await redirectToProfile();
  }

  void setChosenUser(User user) => _profileService.setChosenUser(user);

  void getUserPosts() => _profileService.getUserPosts();

  Future<void> redirectToProfile() async =>
      await _navigationService.navigateTo(Routes.profileView);
}
