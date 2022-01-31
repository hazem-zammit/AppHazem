import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/log_in.dart';
import 'package:application/Design/Pages/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class onboardingpage extends StatelessWidget {
  const onboardingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Your Tasks',
            body:
                'I always reminds you about your planned activities. which is always my priority and your importance.',
            image: buildImage('images/Illustration_1.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Capture Your Memories',
            body:
                'We know that catching photos are necessary in your trip. that’s why we have built-in camera and gallery feature.',
            image: buildImage('images/Illustration_2.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Track Your Fitness',
            body:
                'Fitness is one of the main thing which is really inportant to your body and we track it in every second.',
            image: buildImage('images/Illustration_3.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'There Is Much More',
            body:
                'We have bunch of other cool features. which is super helpful for your next camping trip. so what are you waiting for?',
            image: buildImage('images/Illustration_4.png'),
            decoration: getPageDecoration(),
          ),
        ],
        next: Image.asset('images/Button.png'),
        dotsDecorator: getDotDecoration(),
        showDoneButton: false,
        globalFooter: Container(
          height: 150,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => log_in()),
                  );
                },
                child: buttondefault(title: 'Log in'),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text: 'Don’t have an Account?  ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff18181B)),
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff18181B)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sign_up()),
                          );
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildImage(String path) => Center(
        child: Image.asset(
          path,
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 32, color: Colors.black),
        bodyTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff3F3F46)),
        imagePadding: EdgeInsets.only(top: 50.0),
        titlePadding: EdgeInsets.only(top: 0.0, bottom: 10.0),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xffD9F99D),
        activeColor: Color(0xff84CC16),
        size: Size(8, 8),
        activeSize: Size(10, 10),
      );
}
