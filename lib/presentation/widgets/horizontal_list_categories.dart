import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/widgets/category_item.dart';

import '../../business_logic/news_cubit/news_cubit.dart';
import '../../data/models/category.dart';
import '../../helper/helper_functions.dart';

class HorizontalListCategories extends StatefulWidget {
  const HorizontalListCategories({super.key});

  @override
  State<HorizontalListCategories> createState() =>
      _HorizontalListCategoriesState();
}

class _HorizontalListCategoriesState extends State<HorizontalListCategories> {
  final List<Category> categories = const [
    Category(
      name: 'General',
      imgUrl: 'assets/images/general.jpg',
    ),
    Category(
      name: 'Entertainment',
      imgUrl: 'assets/images/entertainment.png',
    ),
    Category(
      name: 'Business',
      imgUrl: 'assets/images/business.jpg',
    ),
    Category(
      name: 'Health',
      imgUrl: 'assets/images/health.jpg',
    ),
    Category(
      name: 'Science',
      imgUrl: 'assets/images/science.jpg',
    ),
    Category(
      name: 'Sports',
      imgUrl: 'assets/images/sports.jpg',
    ),
    Category(
      name: 'Technology',
      imgUrl: 'assets/images/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context) / 6.5,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<NewsCubit>(context).getArticles(
                category: categories[index].name.toLowerCase(),
              );
              setState(() {
                BlocProvider.of<NewsCubit>(context).category =
                    categories[index].name.toLowerCase();
              });
            },
            child: CategoryItem(
              category: categories[index],
              selected: (BlocProvider.of<NewsCubit>(context).category ==
                  categories[index].name.toLowerCase()),
            ),
          );
        },
      ),
    );
  }
}
