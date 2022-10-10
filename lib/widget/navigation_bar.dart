import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/const/grecroy_const.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {

  int _currentIndex=0;





  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: GrecroyConst.colorGreen,
      currentIndex: _currentIndex,

      //type: İconarka plan rengı kapatması engelliyor.
      //type: BottomNavigationBarType.fixed,
      //selectedFontSize: 20,//iconSize: 30,
      //unselectedFontSize: 20,

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: GrecroyConst.colorGreen,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
            backgroundColor: GrecroyConst.colorBlue),
        BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Personel",
            backgroundColor: GrecroyConst.colorOrange),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: GrecroyConst.colorGrey),
      ],
      onTap: (index) {
        setState(
          () {
            _currentIndex = index;
          },
        );
      },
    );
  }
}


  

  