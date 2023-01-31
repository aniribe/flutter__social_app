import 'package:social_media_app_ui/consts/app_images.dart';
import 'package:social_media_app_ui/enums/enums.dart';
import 'package:social_media_app_ui/models/post.dart';

import '../models/user.dart';

class Lists {
  static List<User> users = [
    User(
      id: '1',
      userName: 'Massimo',
      imagePath: AppImages.image1,
      followers: 100,
      following: 90,
      likes: 50,
    ),
    User(
      id: '2',
      userName: 'John',
      imagePath: AppImages.image2,
      followers: 150,
      following: 200,
      likes: 500,
    ),
    User(
      id: '3',
      userName: 'Laura',
      imagePath: AppImages.image3,
      followers: 1000,
      following: 90,
      likes: 400,
    ),
    User(
      id: '4',
      userName: 'Fred',
      imagePath: AppImages.image4,
      followers: 120,
      following: 350,
      likes: 450,
    ),
    User(
      id: '5',
      userName: 'Grassimo',
      imagePath: AppImages.image5,
      followers: 100,
      following: 90,
      likes: 50,
    ),
  ];

  static List<Post> posts = [
    Post(
        id: '1',
        user: users[0],
        type: PostType.video,
        caption: 'Exploring new places and creating unforgettable memories',
        assetPath: AppImages.video1),
    Post(
        id: '2',
        user: users[2],
        type: PostType.video,
        caption:
            'Finding peace and happiness in the simple moments on the road',
        assetPath: AppImages.video2),
    Post(
        id: '3',
        user: users[2],
        type: PostType.video,
        caption: 'Admiring the beauty of nature from above ',
        assetPath: AppImages.video3),
    Post(
        id: '4',
        user: users[0],
        type: PostType.video,
        caption: 'Tasting the flavors of the world, one dish at a time',
        assetPath: AppImages.video4),
    Post(
        id: '5',
        user: users[4],
        type: PostType.video,
        caption: 'Making new friends and experiencing different cultures',
        assetPath: AppImages.video5),
    Post(
        id: '6',
        user: users[4],
        type: PostType.video,
        caption:
            'Finding adventure in the unknown and stepping out of my comfort zone',
        assetPath: AppImages.video7),
    Post(
        id: '7',
        user: users[1],
        type: PostType.video,
        caption: 'Living life with no regrets, just unforgettable experiences',
        assetPath: AppImages.video8),
    Post(
        id: '8',
        user: users[2],
        type: PostType.video,
        caption: 'Making memories that will last a lifetime',
        assetPath: AppImages.video9),
    Post(
        id: '9',
        user: users[4],
        type: PostType.video,
        caption:
            'Finding adventure in the unknown and stepping out of my comfort zone',
        assetPath: AppImages.video6),
  ];
}
