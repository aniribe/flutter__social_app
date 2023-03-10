import 'package:social_media_app_ui/service/profile_service.dart';
import 'package:social_media_app_ui/ui/view/full_screen_player/full_screen_player_view.dart';
import 'package:social_media_app_ui/ui/view/general/general_view.dart';
import 'package:social_media_app_ui/ui/view/search/search_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/view/home/home_view.dart';
import '../ui/view/profile/profile_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: GeneralView, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: FullScreenVideoPlayerView),
  MaterialRoute(page: SearchView),

  // @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: ProfileService),
  // @stacked-service
])
class App {}
