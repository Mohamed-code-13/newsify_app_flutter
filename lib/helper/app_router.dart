import 'package:flutter/material.dart';

import '../data/models/article.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/article_details_screen.dart';

class AppRouter {
  const AppRouter();

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case ArticleDetailsScreen.routeName:
        final article = settings.arguments as Article;
        return MaterialPageRoute(
          builder: (_) => ArticleDetailsScreen(article: article),
        );

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
