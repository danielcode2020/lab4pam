import 'package:lab4marandici/common/api-service.dart';
import 'package:lab4marandici/data/model/article-model.dart';
import 'package:lab4marandici/data/model/pagination-response.dart';

class ArticleRemoteDataSource {
  final ApiService apiService;

  ArticleRemoteDataSource({required this.apiService});

  Future<PaginationResponse> getArticles(int page) async {
    final dynamic json = (await apiService.get("articles?page=$page")).body;
    return PaginationResponse.fromJson(json);
  }

  Future<ArticleModel> getArticle(String articleId) async {
    final dynamic json = (await apiService.get("articles/$articleId")).body;
    return ArticleModel.fromJson(json);
  }
}