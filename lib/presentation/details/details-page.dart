import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab4marandici/domain/model/article.dart';
import 'package:lab4marandici/presentation/details/details-controller.dart';
import 'package:lab4marandici/presentation/details/widget/article-tag-group.dart';
import 'package:lab4marandici/presentation/widgets/action-button.dart';
import 'package:lab4marandici/presentation/widgets/article-author-avatar.dart';
import 'package:lab4marandici/presentation/widgets/article-category.dart';
import 'package:lab4marandici/presentation/widgets/article-statistics-item.dart';

class DetailsPage extends GetView<DetailsController> {

  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () => Get.back(result: true),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Obx(() =>
      controller.article.value == null
          ? _renderLoading()
          : _renderDetails(controller.article.value!)
      ),
    );
  }

  Widget _renderLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.deepOrange,
      ),
    );
  }

  Widget _renderDetails(Article article) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(article.image),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Text(
            article.title,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              ArticleCategory(category: article.category),
              const SizedBox(width: 16),
              ArticleStatisticsItem(
                text: article.viewsCount.toString(),
                iconData: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(width: 16),
              ArticleStatisticsItem(
                text: article.likes.toString(),
                iconData: Icons.thumb_up,
              ),
              const SizedBox(width: 16),
              ArticleStatisticsItem(
                text: article.comments.toString(),
                iconData: Icons.comment,
              )
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ArticleAuthorAvatar(url: article.author.avatar),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      Text(
                          article.author.name,
                          style: const TextStyle(
                              color: Colors.deepOrange,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          )
                      ),
                      const Text(
                        "5 days ago",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 10
                        ),
                      )
                    ],
                  )
                ],
              ),
              ActionButton(
                text: "Follow",
                leadingIcon: Icons.add,
                onClick: () => { log("Follow clicked") },
              )
            ],
          ),

          const SizedBox(height: 16),

          Text(
            article.content,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 14
            ),
          ),

          const SizedBox(height: 16),

          ArticleTagGroup(tags: article.tags)
        ],
      ),
    );
  }
}