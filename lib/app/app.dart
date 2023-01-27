import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/view/home_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView, initial: true),
  // @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  // @stacked-service
])
class App {}