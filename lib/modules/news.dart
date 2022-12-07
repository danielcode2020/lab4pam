
import 'package:json_annotation/json_annotation.dart';

import 'portal.dart';

part 'news.g.dart';


@JsonSerializable(explicitToJson: true)
class News{
  final String title;
  final String cover;
  final String category;
  final int likes;
  final int comments;
  final Portal portal;


  News(
      {required this.title,
        required this.cover,
        required this.category,
        required this.likes,
        required this.comments,
        required this.portal});


  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}