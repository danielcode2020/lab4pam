// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      title: json['title'] as String,
      cover: json['cover'] as String,
      category: json['category'] as String,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      portal: Portal.fromJson(json['portal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'cover': instance.cover,
      'category': instance.category,
      'likes': instance.likes,
      'comments': instance.comments,
      'portal': instance.portal.toJson(),
    };
