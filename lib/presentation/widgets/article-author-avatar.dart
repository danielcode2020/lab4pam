import 'package:flutter/material.dart';

class ArticleAuthorAvatar extends StatelessWidget {

  final String url;

  const ArticleAuthorAvatar({
    super.key,
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 32,
        height: 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: NetworkImage(url),
            ),
          ),
        )
    );
  }
}