import 'package:flutter/material.dart';

class ArticleStatisticsItem extends StatelessWidget {

  final String text;
  final IconData iconData;

  const ArticleStatisticsItem({
    super.key,
    required this.text,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.deepOrange,
          size: 16.0,
        ),

        const SizedBox(width: 6),

        Text(
          text,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Source Sans Pro',
              fontSize: 12,
              decoration: TextDecoration.none
          ),
        )
      ],
    );
  }
}