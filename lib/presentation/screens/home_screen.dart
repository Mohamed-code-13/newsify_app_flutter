import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../business_logic/news_cubit/news_cubit.dart';
import '../../data/models/article.dart';
import '../../helper/helper_functions.dart';
import '../../helper/my_colors.dart';
import '../widgets/horizontal_list_categories.dart';
import '../widgets/articles_list_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Article> articles = const [];
  bool isSearching = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    BlocProvider.of<NewsCubit>(context).getArticles();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundClr,
      appBar: isSearching ? _searchingAppBar() : _defaultAppBar(),
      body: SafeArea(
        child: OfflineBuilder(
          connectivityBuilder: (
            BuildContext context,
            ConnectivityResult connectivity,
            Widget child,
          ) {
            final bool connected = connectivity != ConnectivityResult.none;

            if (connected) {
              BlocProvider.of<NewsCubit>(context).getArticles();

              return _buildOnlineScreen(context);
            } else {
              return _buildOfflineScreen(context);
            }
          },
          child: _loadingScreen(),
        ),
      ),
    );
  }

  Widget _buildOnlineScreen(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        String currCat = BlocProvider.of<NewsCubit>(context).category;
        BlocProvider.of<NewsCubit>(context).getArticles(category: currCat);
      },
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: HorizontalListCategories(),
          ),
          _buildArticles(),
          // ArticlesListView(articles: articles),
        ],
      ),
    );
  }

  Widget _buildOfflineScreen(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'No internet connection!',
            style: TextStyle(
                color: kAppBarClr, fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Please check your internet.',
            style: TextStyle(
                color: kAppBarClr, fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Image.asset(
            'assets/images/no_internet.png',
            fit: BoxFit.cover,
            width: getScreenWidth(context),
          ),
        ],
      ),
    );
  }

  Widget _buildArticles() {
    return BlocBuilder<NewsCubit, NewsState>(builder: (ctx, state) {
      if (state is NewsLoadingState) {
        return _loadingScreen();
      } else if (state is NewsSuccessState) {
        return ArticlesListView(articles: state.articles);
      } else {
        return _failureScreen();
      }
    });
  }

  Widget _loadingScreen() {
    return const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(color: kAppBarClr),
      ),
    );
  }

  Widget _failureScreen() {
    return const SliverToBoxAdapter(
      child: Center(
        child: Text(
          'An error occured.\n Please try again!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  AppBar _defaultAppBar() {
    return AppBar(
      title: const Text('Newsify'),
      actions: [
        _buildSearchButton(),
      ],
    );
  }

  AppBar _searchingAppBar() {
    return AppBar(title: _buildTextField());
  }

  Widget _buildSearchButton() {
    return IconButton(
      onPressed: _startSearching,
      icon: const Icon(Icons.search),
    );
  }

  Widget _buildTextField() {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Search for an article',
        hintStyle: TextStyle(color: Colors.white54, fontSize: 18),
      ),
      cursorColor: Colors.white,
      autofocus: true,
      enableSuggestions: true,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      onSubmitted: _onSubmit,
    );
  }

  void _startSearching() {
    setState(() {
      ModalRoute.of(context)!.addLocalHistoryEntry(LocalHistoryEntry(
        onRemove: _stopSearching,
      ));

      isSearching = true;
    });
  }

  void _stopSearching() {
    setState(() {
      isSearching = false;
      _controller.clear();
    });
  }

  void _onSubmit(String val) {
    if (val.isNotEmpty && val.trim().isNotEmpty && val.trim() != '') {
      BlocProvider.of<NewsCubit>(context).getArticlesByWord(text: val);
    }
    _stopSearching();
    Navigator.of(context).pop();
  }
}
