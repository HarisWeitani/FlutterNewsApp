import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import '../../../../data/models/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleModel> ? articles;
  final DioException ? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props {
    return [articles!, error!];
  }
}

class RemoteArticlesLoading extends RemoteArticleState{
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState{
  const RemoteArticlesDone(List<ArticleModel> article) : super(articles: article);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioException error) : super(error: error);
}