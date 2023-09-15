import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/article_details_screen.dart';

import '../../data/models/article.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';
import 'custom_image.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          ArticleDetailsScreen.routeName,
          arguments: article,
        );
      },
      child: Container(
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: kPrimaryClr,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              imgUrl: article.imgUrl,
              title: article.title,
            ),
            _getTitle(),
            // const Divider(color: Colors.grey, thickness: 1),
            _getDescription(),
          ],
        ),
      ),
    );
  }

  Widget _getTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        article.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _getDescription() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        article.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white.withOpacity(.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
