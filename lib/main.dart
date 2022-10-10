import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/view/grecroy_Home.dart';
import 'package:flutter_groceries_app/view/grecroy_Info.dart';
import 'package:flutter_groceries_app/view/grecroy_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrecroyApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GrecroyInfo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
