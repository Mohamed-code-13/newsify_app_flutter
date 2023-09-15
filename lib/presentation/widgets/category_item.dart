import 'package:flutter/material.dart';

import '../../data/models/category.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final bool selected;

  const CategoryItem({
    required this.category,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(context) / 6.5,
      width: getScreenWidth(context) / 2.5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: selected ? Border.all(color: kAppBarClr, width: 6) : null,
        image: DecorationImage(
          image: AssetImage(category.imgUrl),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          getFooter(context),
        ],
      ),
    );
  }

  Widget getFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: getScreenWidth(context) / 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black.withOpacity(.3),
      ),
      child: Text(category.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getScreenWidth(context) / 24,
          ),
          textAlign: TextAlign.center),
    );
  }
}
