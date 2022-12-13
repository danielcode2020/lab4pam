class ArticleAuthorModel {
  late String name;
  late String avatar;

  ArticleAuthorModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    avatar = json["avatar"];
  }
}