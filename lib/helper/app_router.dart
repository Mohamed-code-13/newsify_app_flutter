import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/news_cubit/news_cubit.dart';
import '../data/models/article.dart';
import '../data/repository/news_repository.dart';
import '../data/services/news_service.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/article_details_screen.dart';

class AppRouter {
  late NewsRepository newsRepository;
  late NewsCubit newsCubit;

  AppRouter() {
    newsRepository = NewsRepository(NewsService());
    newsCubit = NewsCubit(newsRepository);
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<NewsCubit>(
            create: (_) => newsCubit,
            child: const HomeScreen(),
          ),
        );
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
