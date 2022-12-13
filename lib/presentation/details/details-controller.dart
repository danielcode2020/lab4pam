import 'dart:developer';

import 'package:get/get.dart';
import 'package:lab4marandici/domain/model/article.dart';
import 'package:lab4marandici/domain/usecase/articles-use-case.dart';

class DetailsController extends GetxController {

  final String? articleId;
  final ArticlesUseCase articlesUseCase;

  final article = Rx<Article?>(null);

  DetailsController({
    required this.articleId,
    required this.articlesUseCase
  });

  @override
  void onInit() {
    super.onInit();
    _fetchDetails();
  }

  void _fetchDetails() async {
    try {
      if (articleId != null) {
        article.value = await articlesUseCase.getArticle(articleId ?? "");
      }
    } catch (e) {
      log("Failed fo fetch article details: $e");
    }
  }
}