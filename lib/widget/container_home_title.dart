import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class ContainerHome extends StatelessWidget {
  const ContainerHome({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
                    borderRadius: GrecroyConst.borderradius20,
                    color: GrecroyConst.colorGreens,
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  child:widget);
  }
}
