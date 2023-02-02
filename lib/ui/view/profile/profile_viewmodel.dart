import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';
import '../../../service/profile_service.dart';

class ProfileViewModel extends BaseViewModel {
  final _profileService = locator<ProfileService>();

  User? get user => _profileService.chosenUser;
  List<Post>? get userPosts => _profileService.userPosts;

  // List<Post>? userPosts;

  // void onInit() {
  //
  //   notifyListeners();
  // }
}
