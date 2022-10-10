import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';
import 'package:flutter_groceries_app/widget/container_home_title.dart';
import 'package:flutter_groceries_app/view/grecroy_detail.dart';
import 'package:flutter_groceries_app/widget/text_deco.dart';
import 'package:flutter_groceries_app/widget/common_Icon_Buttom.dart';
import 'package:flutter_groceries_app/widget/common_text%20_H6.dart';
import 'package:flutter_groceries_app/widget/common_text.dart';
import 'package:flutter_groceries_app/widget/common_text_green.dart';
import 'package:flutter_groceries_app/widget/common_text_s2_bold.dart';
import 'package:flutter_groceries_app/widget/navigation_bar.dart';

class GrecroyHome extends StatefulWidget {
  const GrecroyHome({super.key});

  @override
  State<GrecroyHome> createState() => _GrecroyHomeState();
}

class _GrecroyHomeState extends State<GrecroyHome> {
  int _currentIndex = 0;
/*
  final tabs = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Message"),
    ),
    Center(
      child: Text("People"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];
  */

   late  int _product=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatActionbattom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: NavigationBars(),
      body: _PaddingPageAllElement(context),
    );
  }

  FloatingActionButton _floatActionbattom() {
    return FloatingActionButton(
      onPressed: () {setState(() {
        if(_product>=1){
          _product--;
        };
      });},
      child:Text(_product.toString()),
    );
  }

  Padding _PaddingPageAllElement(BuildContext context) {
    return Padding(
      padding: GrecroyConst.paddingAll8,
      child: Container(
        color: GrecroyConst.colorWhites,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _paddingColmunPageElement(context),
      ),
    );
  }

  Padding _paddingColmunPageElement(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appbarRowRowIcon(context),
            GrecroyConst.sizedBoxH25,
            ContainerHome(
              widget: _paddingRowColmun(context),
            ),
            GrecroyConst.sizedBoxH20,
            _rowTitleP(),
            GrecroyConst.sizedBoxH15,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _rowCardProducts(context),
            ),
            GrecroyConst.sizedBoxH20,
            _rowTitleN(),
            GrecroyConst.sizedBoxH20,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _rowCardProducts(
                context,
              ),
            ),
            GrecroyConst.sizedBoxH10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _rowCardProducts(context),
            ),
          ],
        ),
      ),
    );
  }

  Row _rowCardProducts(BuildContext context) {
    return Row(
      children: [
        _cardPaddingColumnImageText(context),
        _cardPaddingColumnImageTexttwo(context),
        _cardPaddingColumnImageText(context),
        _cardPaddingColumnImageTexttwo(context),
        _cardPaddingColumnImageText(context),
        _cardPaddingColumnImageTexttwo(context),
      ],
    );
  }

  SizedBox _cardPaddingColumnImageTexttwo(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.8,
      width: MediaQuery.of(context).size.width / 2,
      child: Card(shape: RoundedRectangleBorder(borderRadius: GrecroyConst.borderradius30),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 11,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => GrecroyDetail()),
                      ),
                    );
                  },
                  child: Image.asset(GrecroyConst.imageHomeCardOne),
                ),
              ),
              GrecroyConst.sizedBoxH20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextH6(text: GrecroyConst.greHomeCardTitleZero),
                  GrecroyConst.sizedBoxH5,
                  CommonText(text: GrecroyConst.greHomeCardKg),
                  GrecroyConst.sizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CommonTextSubTwoBold(text: GrecroyConst.greHomeCardFee),
                          GrecroyConst.sizedBoxW5,
                          TextDeco(text: GrecroyConst.greFee),
                        ],
                      ),
                      IconBottomCom(
                        onPressed: () {setState(() {
                          _product++;
                        });},
                        IconC: Icon(
                          Icons.add_circle,
                          color: GrecroyConst.colorGreen,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _cardPaddingColumnImageText(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.8,
      width: MediaQuery.of(context).size.width / 2,
      child: Card(shape: RoundedRectangleBorder(borderRadius: GrecroyConst.borderradius30),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 11,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => GrecroyDetail()),
                        ),
                      );
                    },
                    child: Image.asset(GrecroyConst.imageHomeCard)),
              ),
              GrecroyConst.sizedBoxH20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextH6(text: GrecroyConst.greHomeCardTitle),
                  GrecroyConst.sizedBoxH5,
                  CommonText(text: GrecroyConst.greHomeCardKg),
                  GrecroyConst.sizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CommonTextSubTwoBold(text: GrecroyConst.greHomeCardFee),
                          GrecroyConst.sizedBoxW5,
                          TextDeco(text: GrecroyConst.greFee),
                        ],
                      ),
                      IconBottomCom(
                        onPressed: () {setState(() {
                          _product++;
                        });},
                        IconC: Icon(
                          Icons.add_circle,
                          color: GrecroyConst.colorGreen,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _rowTitleN() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextH6(text: GrecroyConst.greHomeNew),
        CommonTextGreen(text: GrecroyConst.greHomeSeeAll),
      ],
    );
  }

  Row _rowTitleP() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextH6(text: GrecroyConst.greHomePopular),
        CommonTextGreen(text: GrecroyConst.greHomeSeeAll),
      ],
    );
  }

  Padding _paddingRowColmun(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, bottom: 25, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextH6(text: GrecroyConst.greHomeTitle),
              GrecroyConst.sizedBoxH20,
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 3.5,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: GrecroyConst.borderradius20),
                      backgroundColor: GrecroyConst.colorWhite),
                  child: Text(
                    GrecroyConst.greHomeButtonTitle,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: GrecroyConst.colorGreen),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Image.asset(
              GrecroyConst.imageHome,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Row _appbarRowRowIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: GrecroyConst.colorWhite,
              radius: 25,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.format_align_left,
                  color: GrecroyConst.colorBlack,
                  size: 30,
                ),
              ),
            ),
            GrecroyConst.sizedBoxW20,
           _appBarTitleText(context),
            Icon(Icons.keyboard_arrow_down_sharp),
          ],
        ),
        CircleAvatar(
          backgroundColor: GrecroyConst.colorWhite,
          radius: 25,
          child: IconBottomCom(
            onPressed: () {},
            IconC: Icon(
              Icons.search,
              color: GrecroyConst.colorBlack,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Text _appBarTitleText(BuildContext context) {
    return Text(
      GrecroyConst.greAppbarText,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
