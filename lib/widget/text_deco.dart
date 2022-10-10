import 'package:flutter/material.dart';

class TextDeco extends StatelessWidget {
  const TextDeco({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
           text,
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 2),
          );
  }
}
