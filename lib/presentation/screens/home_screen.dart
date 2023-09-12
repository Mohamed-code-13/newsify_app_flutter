import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/articles_list_view.dart';

import '../../data/models/article.dart';
import '../../helper/my_colors.dart';
import '../widgets/horizontal_list_categories.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  final List<Article> articles = const [
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
    Article(
      author: 'Romain Dillet',
      title:
          'Apple Event 2023: How to watch the iPhone 15 reveal tomorrow - TechCrunch',
      description:
          "Apple is set to announce new iPhone models. The company is holding a keynote at 10 AM PT. And you'll be able to watch the event right here.",
      content:
          "Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.Apple is set to announce new iPhone models during its “Wonderlust” keynote on Tuesday at 10 AM PT (1 PM in New York, 6 PM in London, 7 PM in Paris), and youll be able to watch the event right here.",
      imgUrl:
          'https://techcrunch.com/wp-content/uploads/2023/09/GettyImages-1421648897.jpg?resize=1200,826',
      date: '12 Sep 2023 - 12:40',
    ),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundClr,
      appBar: AppBar(title: const Text('News')),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: HorizontalListCategories(),
            ),
            ArticlesListView(articles: articles),
          ],
        ),
      ),
    );
  }
}
