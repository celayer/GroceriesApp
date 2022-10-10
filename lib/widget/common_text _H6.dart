import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class CommonTextH6 extends StatelessWidget {
  const CommonTextH6({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style:Theme.of(context).textTheme.headline6 ,textAlign: TextAlign.center,);
  }
}