part of 'news_cubit.dart';

abstract class NewsState {}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsSuccessState extends NewsState {
  final List<Article> articles;

  NewsSuccessState(this.articles);
}

class NewsFailureState extends NewsState {}
