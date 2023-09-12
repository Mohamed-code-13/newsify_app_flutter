import 'package:flutter/material.dart';

import '../../data/models/article.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';

class ArticleDetailsScreen extends StatelessWidget {
  static const String routeName = '/details';

  final Article article;

  const ArticleDetailsScreen({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundClr,
      appBar: AppBar(title: const Text('Article')),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _getArticlePanner(context),
            _getDescription(),
            _getContent(),
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
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getDate() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        article.date,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
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

  Widget _getArticlePanner(BuildContext context) {
    return Container(
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
          _getDate(),
        ],
      ),
    );
  }

  Widget _getDescription() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: kPrimaryClr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        article.description,
        style: const TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getContent() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: kPrimaryClr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        article.content,
        style: const TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
