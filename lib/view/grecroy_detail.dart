import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';
import 'package:flutter_groceries_app/view/grecroy_Home.dart';
import 'package:flutter_groceries_app/widget/text_deco.dart';
import 'package:flutter_groceries_app/widget/common_Icon_Buttom.dart';
import 'package:flutter_groceries_app/widget/common_elevated_Button.dart';
import 'package:flutter_groceries_app/widget/common_text%20_H6.dart';
import 'package:flutter_groceries_app/widget/common_text.dart';

class GrecroyDetail extends StatefulWidget {
  const GrecroyDetail({super.key});

  @override
  State<GrecroyDetail> createState() => _GrecroyDetailState();
}

class _GrecroyDetailState extends State<GrecroyDetail> {
  final double _height = 4;

  final double _heightRow = 14;

  final double _widthRow = 8.9;

  double _kg = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paddingContainerColmnDetailPage(context),
    );
  }

  Padding _paddingContainerColmnDetailPage(BuildContext context) {
    return Padding(
      padding: GrecroyConst.paddingAll8,
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 213, 236, 213)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 11, right: 11, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _rowAppbar(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / _height,
                child: Image.asset(GrecroyConst.imageDetail),
              ),
              CommonTextH6(text: GrecroyConst.greDetailTitle),
              GrecroyConst.sizedBoxH15,
              _rowTextFee(),
              GrecroyConst.sizedBoxH40,
              CommonTextH6(text: GrecroyConst.greDetailTextTitle),
              GrecroyConst.sizedBoxH20,
              CommonText(
                text: GrecroyConst.greDetailText,
              ),
              GrecroyConst.sizedBoxH20,
              CommonTextH6(text: GrecroyConst.greDetailTitleTwo),
              GrecroyConst.sizedBoxH10,
              _paddindRowImage(context),
              GrecroyConst.sizedBoxH15,
              Expanded(
                flex: 1,
                child: ElevatedButtonCom(
                  text: GrecroyConst.elevatedButtonTextDetail,
                  onPressed: () {},
                ),
              ),
              GrecroyConst.sizedBoxH30
            ],
          ),
        ),
      ),
    );
  }

  Row _rowTextFee() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CommonTextH6(text: GrecroyConst.greHomeCardFee),
            GrecroyConst.sizedBoxW5,
            TextDeco(text: GrecroyConst.greFee),
          ],
        ),
        Row(
          children: [
            IconBottomCom(
              onPressed: () {
                setState(() {
                  if (_kg >= 1) {
                    _kg--;
                  }
                });
              },
              IconC: Icon(
                Icons.remove_circle,
                color:
                    _kg >= 1 ? GrecroyConst.colorGreen : GrecroyConst.colorGrey,
              ),
            ),
            CommonTextH6(text: _kg.toString()),
            GrecroyConst.sizedBoxW5,
            CommonTextH6(text: GrecroyConst.greKg),
            IconBottomCom(
              onPressed: () {
                setState(() {
                  _kg++;
                });
              },
              IconC: Icon(
                Icons.add_circle,
                color: GrecroyConst.colorGreen,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _rowAppbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: GrecroyConst.colorWhite,
          radius: 25,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => GrecroyHome()),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: GrecroyConst.colorBlack,
              size: 30,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: GrecroyConst.colorWhite,
          radius: 25,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: GrecroyConst.colorBlack,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Padding _paddindRowImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(
              GrecroyConst.imageInfo,
              fit: BoxFit.fill,
            ),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageHome),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageDetail),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageDetailZero),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageDetailOne),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageHomeCard),
          ),
          GrecroyConst.sizedBoxW5,
          Container(
            decoration: BoxDecoration(
                borderRadius: GrecroyConst.borderradius10,
                color: GrecroyConst.colorWhite),
            height: MediaQuery.of(context).size.height / _heightRow,
            width: MediaQuery.of(context).size.width / _widthRow,
            child: Image.asset(GrecroyConst.imageHomeCardOne),
          ),
          GrecroyConst.sizedBoxW5,
        ],
      ),
    );
  }
}
