import 'package:flutter/material.dart';

import '../presentation/screens/home_screen.dart';
import '../presentation/screens/news_details_screen.dart';

class AppRouter {
  const AppRouter();

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case NewsDetailsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NewsDetailsScreen());

      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
