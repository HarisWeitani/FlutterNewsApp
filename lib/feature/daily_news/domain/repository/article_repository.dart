import 'package:flutter_news_app/core/data_state.dart';
import 'package:flutter_news_app/feature/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  //API
  Future<DataState<ArticleEntity>> getNewsArticle();

}