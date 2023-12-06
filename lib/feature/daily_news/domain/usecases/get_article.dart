import 'package:flutter_news_app/core/data_state.dart';
import 'package:flutter_news_app/core/usecase.dart';
import 'package:flutter_news_app/feature/daily_news/data/repository/article_repository_impl.dart';
import 'package:flutter_news_app/feature/daily_news/domain/entities/article.dart';
import 'package:flutter_news_app/feature/daily_news/domain/repository/article_repository.dart';
import '../../data/models/article.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleModel>>, void> {

  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleModel>>> call({void params}) {
    return _articleRepository.getNewsArticle();
  }

}