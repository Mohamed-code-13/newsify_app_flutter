import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/category_item.dart';

import '../../data/models/category.dart';
import '../../helper/helper_functions.dart';

class HorizontalListCategories extends StatelessWidget {
  final List<Category> categories = const [
    Category(
      name: 'General',
      imgUrl: 'assets/images/general.avif',
    ),
    Category(
      name: 'Entertainment',
      imgUrl: 'assets/images/entertainment.png',
    ),
    Category(
      name: 'Business',
      imgUrl: 'assets/images/business.avif',
    ),
    Category(
      name: 'Health',
      imgUrl: 'assets/images/health.avif',
    ),
    Category(
      name: 'Science',
      imgUrl: 'assets/images/science.avif',
    ),
    Category(
      name: 'Sports',
      imgUrl: 'assets/images/sports.avif',
    ),
    Category(
      name: 'Technology',
      imgUrl: 'assets/images/technology.jpeg',
    ),
  ];

  const HorizontalListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context) / 6.5,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) => CategoryItem(category: categories[index]),
      ),
    );
  }
}
