import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.start,overflow: TextOverflow.ellipsis,maxLines: 3,
    );
  }
}
