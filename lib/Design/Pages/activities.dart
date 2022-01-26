import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/addactivity.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';

class activities extends StatefulWidget {
  const activities({Key? key}) : super(key: key);

  @override
  State<activities> createState() => _activitiesState();
}

class _activitiesState extends State<activities> with TickerProviderStateMixin {
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
                  "Activities",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                actions: [Image.asset('images/plus1.png')],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Day 01',
                                style: TextStyle(
                                    color: Color(0xFF365314),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600),
                              ),
                              Image.asset('images/sun.png'),
                            ],
                          ),
                          Text(
                            '16 day’s remain',
                            style: TextStyle(
                                color: Color(0xFFA1A1AA),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Image.asset('images/Illustration1.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "You didn’t add any Activity or Task yet.",
                        style:
                            TextStyle(color: Color(0xFF3F3F46), fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addactivity()),
                          );
                        },
                        child: buttonsmalloutlined(title: 'Add Activity '),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
