class ArticleCategoryModel {
  late String title;

  ArticleCategoryModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
  }
}