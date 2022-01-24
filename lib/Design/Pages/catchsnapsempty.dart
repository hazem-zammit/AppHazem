import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';

class catchsnapsempty extends StatefulWidget {
  const catchsnapsempty({Key? key}) : super(key: key);

  @override
  State<catchsnapsempty> createState() => _catchsnapsemptyState();
}

class _catchsnapsemptyState extends State<catchsnapsempty>
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
                  "Catch Snaps",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Illustrationsnaps.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You didn’t catch any snaps yet.',
                      style: TextStyle(
                        color: Color(0xff3F3F46),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buttonsmalloutlined(title: 'Click Snaps'),
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
