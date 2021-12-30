import 'package:flutter/material.dart';
import 'Design/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camping App',
      theme: ThemeData(
        fontFamily: 'SF-Pro-Text',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white ,       
        unselectedWidgetColor: Color(0xff94A3B8) ,
      ),
      home: home(),
    );
  }
}

