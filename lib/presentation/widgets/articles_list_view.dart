import 'package:flutter/material.dart';

import '../../data/models/article.dart';
import 'article_item.dart';

class ArticlesListView extends StatelessWidget {
  final List<Article> articles;

  const ArticlesListView({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => ArticleItem(article: articles[index]),
      ),
    );
  }
}
