import 'dart:io';

import 'package:flutter_news_app/core/constants.dart';
import 'package:flutter_news_app/core/data_state.dart';
import 'package:flutter_news_app/feature/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_news_app/feature/daily_news/data/models/article.dart';
import 'package:flutter_news_app/feature/daily_news/domain/entities/article.dart';
import 'package:flutter_news_app/feature/daily_news/domain/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticle(
        apiKey:newsAPIKey,
        country:countryQuery,
        category:categoryQuery,
      );

      if(httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            DioException.connectionError(
                requestOptions: httpResponse.response.requestOptions,
                reason: httpResponse.response.statusMessage.toString()
            )
        );
      }

    } on DioException catch (e) {
      return DataFailed(e);
    }

  }

}