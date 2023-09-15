import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/models/article.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';
import '../widgets/custom_image.dart';

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
            _getAuthorPanner(context),
            _getText('Description', article.description),
            _getText('Content', article.content),
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
    DateTime dateTime = DateTime.parse(article.date).toLocal();
    String formatted = DateFormat('yyyy-MM-dd HH:mm').format(dateTime);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        formatted,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
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
          CustomImage(
            imgUrl: article.imgUrl,
            title: article.title,
          ),
          _getTitle(),
          _getDate(),
        ],
      ),
    );
  }

  Widget _getAuthorPanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: kPrimaryClr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 35,
            foregroundColor: kAppBarClr,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getScreenWidth(context) - 150,
                child: Text(
                  article.author,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Text(
                'Author',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getText(String title, String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: kPrimaryClr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white70,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
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
