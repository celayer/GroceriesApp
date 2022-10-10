import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';
import 'package:flutter_groceries_app/view/grecroy_Home.dart';
import 'package:flutter_groceries_app/widget/common_elevated_Button.dart';
import 'package:flutter_groceries_app/widget/common_text.dart';

class GrecroyInfo extends StatelessWidget {
  const GrecroyInfo({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paddingContainerCenterPad(context),
    );
  }

  Padding _paddingContainerCenterPad(BuildContext context) {
    return Padding(
      padding: GrecroyConst.paddingAll8,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: GrecroyConst.colorGreens,
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 20),
            child: _columnExpandedSpacer(context),
          ),
        ),
      ),
    );
  }

  Column _columnExpandedSpacer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(
          flex: 2,
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            GrecroyConst.imageInfo,
            fit: BoxFit.fill,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _infoTitle(context),
              CommonText(text: GrecroyConst.greInfoText),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 1,
          child: ElevatedButtonCom(
            text: GrecroyConst.elevatedButtonText,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => GrecroyHome()),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Text _infoTitle(BuildContext context) {
    return Text(
      GrecroyConst.greTextTitle,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
