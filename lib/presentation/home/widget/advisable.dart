import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lab4marandici/presentation/home/module/featured.dart';
import 'package:lab4marandici/presentation/widgets/action-button.dart';

class Advisable extends StatelessWidget {

  final Featured featured;

  const Advisable({
    super.key,
    required this.featured
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 320,
            height: 252,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(featured.cover),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 58,
            child: Text(
              featured.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none
              ),
            ),
          ),

          Positioned(
            left: 24,
            bottom: 16,
            child: ActionButton(
              text: "Read Now",
              onClick: () => log("Read now clicked"),
            ),
          ),
        ],
      ),
    );
  }
}