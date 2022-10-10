import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class CommonTextSubTwoBold extends StatelessWidget {
  const CommonTextSubTwoBold({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
