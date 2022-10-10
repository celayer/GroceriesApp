import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class ElevatedButtonCom extends StatelessWidget {
  const ElevatedButtonCom({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: GrecroyConst.borderradius40),
        ),
        child: Text(text),
      ),
    );
  }
}
