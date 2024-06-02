import 'package:auto_route/auto_route.dart';

import 'news_feed_screen.dart';
import 'settings_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: NewsFeedScreen),
    MaterialRoute(page: SettingsScreen, initial: true),
  ],
)
class $AppRouter {}