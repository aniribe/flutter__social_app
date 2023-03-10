import 'package:stacked/stacked_annotations.dart';

import '../data/lists.dart';
import '../models/post.dart';
import '../models/user.dart';

@LazySingleton()
class ProfileService {
  User? chosenUser;
  List<Post>? userPosts;
  Post? chosenPost;

  void getUserPosts() {
    userPosts = Lists.posts.where((post) => post.user == chosenUser).toList();
  }

  void setChosenUser(User user) => chosenUser = user;

  void setChosenPost(Post post) => chosenPost = post;
}
