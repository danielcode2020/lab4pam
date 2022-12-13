import 'package:flutter/material.dart';

class ArticleTag extends StatelessWidget {

  final String tag;

  const ArticleTag({
    super.key,
    required this.tag
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FittedBox(
        child: Container(
          height: 32,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1.0, color: Colors.deepOrange),
          ),
          child: Text(
              "#${tag.trim()}",
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 18,
                color: Colors.deepOrange,
              )
          ),
        ),
      ),
    );
  }
}