import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {

  final String title;
  final Function onSeeAll;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeAll
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    decoration: TextDecoration.none
                )
            ),
            TextButton(
                onPressed: () => onSeeAll(),
                child: const Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                )
            )
          ],
        )
    );
  }
}