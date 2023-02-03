import 'package:social_media_app_ui/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';
import '../../../service/profile_service.dart';

class ProfileViewModel extends BaseViewModel {
  final _profileService = locator<ProfileService>();
  final _navigationService = locator<NavigationService>();

  User? get user => _profileService.chosenUser;
  List<Post>? get userPosts => _profileService.userPosts;

  Future<void> onVideoDoubleTapHandler(Post post) async {
    setChosenPost(post);
    await redirectToFullScreenPlayer();
  }

  void setChosenPost(Post post) => _profileService.setChosenPost(post);

  Future<void> redirectToFullScreenPlayer() async =>
      _navigationService.navigateTo(Routes.fullScreenVideoPlayerView);
}
