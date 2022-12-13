import 'package:flutter/material.dart';

class ArticleCategory extends StatelessWidget {

  final String category;

  const ArticleCategory({
    super.key,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1.0, color: Colors.deepOrange),
      ),
      child: Text(
          category.trim(),
          style: const TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 12,
              color: Colors.deepOrange,
              decoration: TextDecoration.none
          )
      ),
    );
  }
}