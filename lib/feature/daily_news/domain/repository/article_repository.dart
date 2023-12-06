import 'package:flutter_news_app/core/data_state.dart';
import 'package:flutter_news_app/feature/daily_news/data/models/article.dart';

abstract class ArticleRepository {
  //API
  Future<DataState<List<ArticleModel>>> getNewsArticle();

}