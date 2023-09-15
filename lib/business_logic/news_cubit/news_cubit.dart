import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/article.dart';
import '../../data/repository/news_repository.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepository newsRepository;
  List<Article> articles = [];
  String category = 'general';

  NewsCubit(this.newsRepository) : super(NewsInitialState());

  List<Article> getArticles({String category = 'general'}) {
    emit(NewsLoadingState());

    newsRepository.getArticles(category: category).then((articles) {
      this.articles = articles;
      if (articles.isEmpty) {
        emit(NewsFailureState());
      } else {
        emit(NewsSuccessState(articles));
      }
    });

    return articles;
  }

  void getArticlesByWord({required String text}) {
    emit(NewsLoadingState());

    newsRepository.getArticlesByWord(text: text).then((articles) {
      this.articles = articles;
      emit(NewsSuccessState(articles));
    });
  }
}
