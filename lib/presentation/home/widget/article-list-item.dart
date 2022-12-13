import 'package:flutter/material.dart';
import 'package:lab4marandici/domain/model/article.dart';
import 'package:lab4marandici/presentation/widgets/article-author-avatar.dart';
import 'package:lab4marandici/presentation/widgets/article-category.dart';
import 'package:lab4marandici/presentation/widgets/article-statistics-item.dart';

class ArticleItem extends StatelessWidget {

  final Article article;
  final Function(int articleId) onItemClick;

  const ArticleItem({
    super.key,
    required this.article,
    required this.onItemClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.grey,
              width: 1
          )
      ),
      child: GestureDetector(
        onTap: () => onItemClick(article.id),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              ),
              child: SizedBox(
                width: 125,
                height: 150,
                child: Image.network(
                  fit: BoxFit.fitHeight,
                  article.image,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 44,
                    width: 222,
                    child: Text(
                      article.title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          decoration: TextDecoration.none
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    children: [
                      ArticleAuthorAvatar(url: article.author.avatar),
                      const SizedBox(width:16),
                      Text(
                        article.author.name,
                        style: const TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w600, color:Color(0xff2C3A4B),
                            decoration: TextDecoration.none
                        ),
                      ),
                      const SizedBox(width:16),
                      ArticleCategory(category: article.category)
                    ],
                  ),
                  Row(
                    children:[
                      ArticleStatisticsItem(
                        text: article.likes.toString(),
                        iconData: Icons.thumb_up,
                      ),

                      const SizedBox(width: 16),

                      ArticleStatisticsItem(
                        text: article.comments.toString(),
                        iconData: Icons.comment,
                      ),

                      Padding(padding: const EdgeInsets.only(left: 16),
                        child: SizedBox(
                          child: Icon(
                            article.isFeatured == true ? Icons.bookmark : Icons.bookmark_border,
                            color:Colors.deepOrange,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ]
            ),
          ],
        ),
      ),
    );
  }
}