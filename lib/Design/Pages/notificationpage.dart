import 'package:application/Design/CustomWidgets/notifcard.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';

class notificationpage extends StatefulWidget {
  const notificationpage({Key? key}) : super(key: key);

  @override
  State<notificationpage> createState() => _notificationpageState();
}

class _notificationpageState extends State<notificationpage>
    with TickerProviderStateMixin {
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
                  "Notificaitons",
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
                  children: [
                    Center(
                      child: Text(
                      '14 Feb 2020',
                      style: TextStyle(
                          color: Color(0xffA1A1AA),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    notifcard(
                        icon: 'images/award.png',
                        title: 'Congratulations!',
                        text: 'You recieved the welcome badge'),
                    SizedBox(
                      height: 20,
                    ),
                    notifcard(
                        icon: 'images/alert-circle.png',
                        title: 'You didn’t completed the activity.',
                        text: 'Named view of sunset by Emma.'),
                    SizedBox(
                      height: 20,
                    ),
                    notifcardext(
                        icon: 'images/checkmarkgreen.png',
                        title: 'You completed an activity',
                        text: 'Named Hiking on mountain by Chandler.'),

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
