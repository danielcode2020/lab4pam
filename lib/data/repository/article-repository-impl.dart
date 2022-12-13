import 'package:lab4marandici/data/datasource/remote/article-remote-data-source.dart';
import 'package:lab4marandici/data/model/article-model.dart';
import 'package:lab4marandici/data/model/pagination-response.dart';
import 'package:lab4marandici/domain/model/article.dart';
import 'package:lab4marandici/domain/model/paginated-response.dart';
import 'package:lab4marandici/domain/repository/article-repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {

  final ArticleRemoteDataSource articleRemoteDataSource;

  ArticleRepositoryImpl({
    required this.articleRemoteDataSource
  });

  @override
  Future<PaginatedResponse<Article>> getAll(int page) async {
    final PaginationResponse response = await articleRemoteDataSource.getArticles(page);

    return PaginatedResponse(
        totalPages: response.total_pages,
        items: ArticleModel.fromJsonList(response.results).map((e) => e.toDomain()).toList()
    );
  }

  @override
  Future<Article> getById(String id) async {
    return (await articleRemoteDataSource.getArticle(id)).toDomain();
  }
}