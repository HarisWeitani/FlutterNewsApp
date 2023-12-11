import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/config/theme/app_themes.dart';
import 'package:flutter_news_app/feature/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_news_app/feature/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_news_app/feature/daily_news/presentation/pages/home/news_home_page.dart';
import 'package:flutter_news_app/injection_container.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) => serviceLocator()..add(const GetArticles()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: const NewsHomePage(),
      ),
    );
  }
}
