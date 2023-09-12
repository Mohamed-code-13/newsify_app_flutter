import 'package:flutter/material.dart';

import '../../data/models/category.dart';
import '../../helper/my_colors.dart';
import '../widgets/category_item.dart';
import '../widgets/horizontal_list_categories.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundClr,
      appBar: AppBar(title: const Text('News')),
      body: const HorizontalListCategories(),
    );
  }
}
