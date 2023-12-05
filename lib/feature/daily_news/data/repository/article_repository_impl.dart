import 'package:flutter_news_app/core/data_state.dart';
import 'package:flutter_news_app/feature/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_news_app/feature/daily_news/data/models/article.dart';
import 'package:flutter_news_app/feature/daily_news/domain/entities/article.dart';
import 'package:flutter_news_app/feature/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<ArticleModel>> getNewsArticle() async {
    final httpResponse = await _newsApiService.getNewsArticle(
      apiKey:newsAPIKey,
      country:countryQuery,
      category:categoryQuery,
    );
  }

}