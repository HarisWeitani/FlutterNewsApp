import 'package:flutter/material.dart';
import 'package:flutter_news_app/feature/daily_news/presentation/widgets/article_tile.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Title',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        GestureDetector(
          onTap: () => {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.bookmark, color: Colors.black),
          ),
        )
      ],
      backgroundColor: Colors.white,
    );
  }

  _buildBody() {
    return const ArticleWidget();
  }

}
