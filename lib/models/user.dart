class User {
  final String id;
  final String userName;
  final String imagePath;
  final int followers;
  final int following;
  final int likes;

  User({
    required this.id,
    required this.userName,
    required this.imagePath,
    this.followers = 0,
    this.following = 0,
    this.likes = 0,
  });
}
