import 'package:flutter/material.dart';

import 'helper/app_router.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  final AppRouter appRouter = const AppRouter();

  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
