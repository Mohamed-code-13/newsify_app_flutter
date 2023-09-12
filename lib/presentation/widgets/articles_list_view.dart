import 'package:flutter/material.dart';

import '../../data/models/article.dart';
import 'article_item.dart';

class ArticlesListView extends StatelessWidget {
  final List<Article> articles;

  const ArticlesListView({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView.builder(
        itemCount: articles.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) {
          return ArticleItem(article: articles[index]);
        },
      ),
    );
  }
}
