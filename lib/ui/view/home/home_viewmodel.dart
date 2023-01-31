import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../models/user.dart';
import '../../../service/profile_service.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _profileService = locator<ProfileService>();

  Future<void> onCaptionTapHandler(User user) async {
    setChosenUserId(user);
    await redirectToProfile();
  }

  void setChosenUserId(User user) => _profileService.setChosenUser(user);

  Future<void> redirectToProfile() async =>
      await _navigationService.navigateTo(Routes.profileView);
}
