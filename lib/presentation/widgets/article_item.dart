import 'package:flutter/material.dart';

import '../../data/models/article.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: kPrimaryClr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getImage(context),
          _getTitle(),
          // const Divider(color: Colors.grey, thickness: 1),
          _getDescription(),
        ],
      ),
    );
  }

  Widget _getImage(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Image.network(
        article.imgUrl,
        width: getScreenWidth(context),
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
