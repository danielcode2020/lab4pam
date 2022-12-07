import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../modules/featured.dart';
import '../modules/news.dart';

class HomeController extends GetxController {
  RxList<Featured> featured = RxList();
  RxList<News> news = RxList();

  // Future obiect care reprezint o computatie 'intarziata', potential null sau eroare
  Future<void> readJsonFile() async {
    final String jsonString =
    await rootBundle.loadString('assets/news.json');
    final data = await json.decode(jsonString);

    featured.value = (data['featured'] as List)
        .map((value) => Featured.fromJson(value))
        .toList();
    news.value = (data['news'] as List)
        .map((value) => News.fromJson(value))
        .toList();

  }
}