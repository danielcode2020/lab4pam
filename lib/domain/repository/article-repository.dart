import 'package:lab4marandici/domain/model/article.dart';
import 'package:lab4marandici/domain/model/paginated-response.dart';

abstract class ArticleRepository {
  Future<PaginatedResponse<Article>> getAll(int page);
  Future<Article> getById(String id);
}