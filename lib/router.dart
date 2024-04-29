import 'package:auto_route/auto_route.dart';

import 'news_feed_screen.dart';
import 'settings_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: NewsFeedScreen, initial: true),
    MaterialRoute(page: SettingsScreen),
  ],
)
class $AppRouter {}
