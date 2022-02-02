import 'package:application/Design/Pages/onboardingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

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
        scaffoldBackgroundColor: Colors.white,
        unselectedWidgetColor: Color(0xff94A3B8),
      ),
      home: AnimatedSpash(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/Logo.png'),
              Text(
                'Makes your camping more easy, next level. and helps you to follow your plannings.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        type: Transition.fade,
        curve: Curves.easeInQuart,
        backgroundColor: Color(0xff84CC16),
        navigator: onboardingpage(),
        durationInSeconds: 2,
      ),
    );
  }
}
