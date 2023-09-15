import '../models/article.dart';
import '../services/news_service.dart';

class NewsRepository {
  final NewsService newsService;

  NewsRepository(this.newsService);

  Future<List<Article>> getArticles({
    String category = 'general',
  }) async {
    final response = await newsService.getArticles(category: category);
    List<dynamic> articles = response['articles'] ?? [];

    return articles.map((article) {
      return Article.fromJson(article);
    }).toList();
  }

  Future<List<Article>> getArticlesByWord({
    required String text,
  }) async {
    final response = await newsService.getArticlesByWord(text: text);
    List<dynamic> articles = response['articles'] ?? [];

    return articles.map((article) => Article.fromJson(article)).toList();
  }
}
