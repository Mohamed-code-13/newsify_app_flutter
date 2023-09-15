import 'package:dio/dio.dart';

const String baseUrl = 'https://newsapi.org/';
const String YOUR_API_KEY = '';

class NewsService {
  Dio dio = Dio();

  Future<Map<String, dynamic>> getArticles({
    String category = 'general',
  }) async {
    String url = '${baseUrl}v2/top-headlines?';
    url += 'apiKey=$YOUR_API_KEY';
    url += '&country=us&category=$category';

    try {
      Response response = await dio.get(url);
      return response.data;
    } catch (e) {
      print(e);
      return {};
    }
  }

  Future<Map<String, dynamic>> getArticlesByWord({
    required String text,
  }) async {
    String url = '${baseUrl}v2/everything?';
    url += 'apiKey=$YOUR_API_KEY';
    url += '&q=$text&language=en';

    try {
      Response response = await dio.get(url);
      return response.data;
    } catch (e) {
      print(e);
      return {};
    }
  }
}
