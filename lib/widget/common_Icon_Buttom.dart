import 'package:flutter/material.dart';

class IconBottomCom extends StatelessWidget {
  const IconBottomCom({super.key, required this.onPressed, required this.IconC});

  final void Function() onPressed;
  final Icon IconC;



  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: IconC);
  }
}