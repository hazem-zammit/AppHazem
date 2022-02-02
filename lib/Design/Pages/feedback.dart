import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:application/Design/Pages/feedbacksubmit.dart';

import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        drawermenu1(),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          transform: Matrix4.translationValues(translateX, translateY, 0)
            ..scale(scale),
          child: ClipRRect(
            borderRadius:
                (toggle) ? BorderRadius.circular(20) : BorderRadius.circular(0),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                leading: IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_arrow,
                      color: Colors.black,
                      progress: _animationController),
                  onPressed: () {
                    toggle = !toggle;
                    if (toggle) {
                      translateX = 200;
                      translateY = 80;
                      scale = 0.8;
                      _animationController.forward();
                    } else {
                      translateX = 0;
                      translateY = 0;
                      scale = 1;
                      _animationController.reverse();
                    }
                    setState(() {});
                  },
                ),
                title: Text(
                  "Feedback",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'We are continously trying to make the app better and your experience is matter. If you are seeing any kind of problems or bugs. Let us know we will listen you.',
                      style: TextStyle(color: Color(0xff71717A), fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                color: Color(0xff71717A), fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          txtfieldmedium(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Message',
                            style: TextStyle(
                                color: Color(0xff71717A), fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          msgfield(),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => feedbacksubmit()),
                              );
                            },
                            child: buttondefault(title: 'Submit'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
