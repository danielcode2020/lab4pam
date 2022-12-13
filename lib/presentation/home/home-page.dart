import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab4marandici/presentation/home/home-controller.dart';
import 'package:lab4marandici/presentation/home/widget/advisable.dart';
import 'package:lab4marandici/presentation/home/widget/article-list-item.dart';
import 'package:lab4marandici/presentation/navigation.dart';
import 'package:lab4marandici/presentation/widgets/section-header.dart';

class HomePage extends GetView<HomeController> {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.articlesScrollController.addListener(() {
      var nextPageTrigger = 0.9 * controller.articlesScrollController.position.maxScrollExtent;

      if (controller.articlesScrollController.position.pixels > nextPageTrigger) {
        controller.loadData();
      }
    });

    return Obx(() =>
        Column(
          children: [
            SectionHeader(
              title: "Featured",
              onSeeAll: () => { log("On See All featured pressed") },
            ),
            Container(
              height: 252,
              child: ListView.separated(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  itemCount: controller.featured.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    return Advisable(
                      featured: controller.featured[index],
                    );
                  }
              ),
            ),
            SectionHeader(
              title: "News",
              onSeeAll: () => { log("On See All featured pressed") },
            ),
            Expanded(
              child: ListView.separated(
                controller: controller.articlesScrollController,
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                itemCount: controller.articles.length,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return ArticleItem(
                    article: controller.articles[index],
                    onItemClick: (articleId) => Get.toNamed(Navigation.toDetails(articleId)),
                  );
                },
              ),
            )
          ],
        ),
    );
  }
}

