import 'dart:math';

import 'package:lab4marandici/domain/model/article-author.dart';

class Article {
  final int id;
  final String title;
  final String description;
  final String content;
  final String image;
  final String category;
  final int viewsCount;
  final ArticleAuthor author;
  final List<String> tags;
  final bool isFeatured;
  int likes = Random().nextInt(1000);
  int comments = Random().nextInt(1000);

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.category,
    required this.viewsCount,
    required this.author,
    required this.tags,
    required this.isFeatured
  });
}