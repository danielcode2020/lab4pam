import 'package:get/get.dart';
import 'package:lab4marandici/common/api-service.dart';
import 'package:lab4marandici/data/datasource/remote/article-remote-data-source.dart';
import 'package:lab4marandici/data/repository/article-repository-impl.dart';
import 'package:lab4marandici/domain/repository/article-repository.dart';
import 'package:lab4marandici/domain/usecase/articles-use-case.dart';

class DIInitializer {

  static Future init() async {
    Get.put(ApiService());
    Get.put(ArticleRemoteDataSource(apiService: Get.find<ApiService>()));
    Get.put<ArticleRepository>(ArticleRepositoryImpl(articleRemoteDataSource: Get.find<ArticleRemoteDataSource>()));
    Get.put(ArticlesUseCase(articleRepository: Get.find<ArticleRepository>()));
  }
}