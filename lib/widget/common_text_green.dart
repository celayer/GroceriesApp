import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class CommonTextGreen extends StatelessWidget {
  const CommonTextGreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: GrecroyConst.colorGreen),
      textAlign: TextAlign.center,
    );
  }
}
