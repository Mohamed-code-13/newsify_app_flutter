import 'package:flutter/material.dart';

import 'helper/app_router.dart';
import 'helper/my_colors.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();

  NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: kAppBarClr,
        ),
      ),
    );
  }
}
