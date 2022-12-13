import 'package:lab4marandici/data/model/article-author-model.dart';
import 'package:lab4marandici/data/model/article-category-model.dart';
import 'package:lab4marandici/domain/model/article-author.dart';
import 'package:lab4marandici/domain/model/article.dart';

class ArticleModel {
  late int id;
  late String title;
  late String description;
  late String content;
  late String image;
  late ArticleCategoryModel category;
  late ArticleAuthorModel author;
  late List<String> tags;
  late int views_count;
  late bool is_featured;

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    content =  json["content"];
    image = json["image"];
    category = ArticleCategoryModel.fromJson(json["category"]);
    author = ArticleAuthorModel.fromJson(json["author"]);
    tags = (json["tags"] as List<dynamic>).cast<String>();
    views_count = json["views_count"];
    is_featured = json["is_featured"];
  }

  static List<ArticleModel> fromJsonList(List<dynamic> jsonList) =>
      jsonList.map((e) => ArticleModel.fromJson(e)).toList();
}

extension ArticleModelMapper on ArticleModel {
  Article toDomain() {
    return Article(
        id: id,
        title: title,
        description: description,
        content: content,
        image: image,
        category: category.title,
        viewsCount: views_count,
        tags: tags,
        isFeatured: is_featured,
        author: ArticleAuthor(
            name: author.name,
            avatar: author.avatar
        )
    );
  }
}