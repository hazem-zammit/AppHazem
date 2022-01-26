import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';

class howtouse extends StatefulWidget {
  const howtouse({Key? key}) : super(key: key);

  @override
  State<howtouse> createState() => _howtouseState();
}

class _howtouseState extends State<howtouse>
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
                  "How To Use",
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
                    SizedBox(
                      height: 15,
                    ),
                    card(
                        order: '1',
                        title: 'Make a Trip',
                        text: 'By pressing “start new trip” button you’ll be able to make fill a form which will help you to set up your....'),
                    SizedBox(
                      height: 20,
                    ),
                    card(
                        order: '2',
                        title: 'Add Location',
                        text: 'This app have a great feature which allows you to discover the top locations around the world and le....'),
                    SizedBox(
                      height: 20,
                    ),
                    card(
                        order: '3',
                        title: 'Add Teammates',
                        text: 'If you previously added teammates they will show in the list. but is you didn’t do that you need to add n....'),
                    SizedBox(
                      height: 20,
                    ),
                    card(
                        order: '4',
                        title: 'Now you’re Ready',
                        text: 'To begin your adventure with your Camping App which will helps you to set your targets. know what be....'),    
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

Widget card({order, title, text}) {
  return Container(
    height: 116,
    width: 335,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xffF7FEE7),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xffECFCCB),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                order,
                style: TextStyle(
                      color: Color(0xff365314),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff365314),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              
              Container(
                width: 238,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Color(0xff4D7C0F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}