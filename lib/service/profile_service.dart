import 'package:stacked/stacked_annotations.dart';

import '../data/lists.dart';
import '../models/post.dart';
import '../models/user.dart';

@LazySingleton()
class ProfileService {
  // String? chosenUserId;

  User? chosenUser;

  List<Post>? getUserPosts() {
    return Lists.posts.where((post) => post.user == chosenUser).toList();
  }

  void setChosenUser(User user) => chosenUser = user;
}
