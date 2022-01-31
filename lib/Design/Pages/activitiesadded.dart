import 'package:application/Design/Pages/activityview.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';

class activitiesadded extends StatefulWidget {
  const activitiesadded({Key? key}) : super(key: key);

  @override
  State<activitiesadded> createState() => _activitiesaddedState();
}

class _activitiesaddedState extends State<activitiesadded>
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
                  "Activities",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                actions: [
                  Image.asset('images/plus1.png'),
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ListView(
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
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => activityview()),
                          );
                        },
                        child: Dismissible(
                          key: ValueKey(0),
                          background: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff64BC26),
                            ),
                            width: 124,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Complete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEA1601),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          child: ActivityCard(
                              title: 'Find a Place',
                              description:
                                  'We need to find a perfect place for set up our camp’s and where we will...',
                              by: 'you'),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => activityview()),
                          );
                        },
                        child: Dismissible(
                          key: ValueKey(0),
                          background: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff64BC26),
                            ),
                            width: 124,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Complete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEA1601),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          child: ActivityCard(
                              title: 'Going to Fishing',
                              description:
                                  'We need to find out our tomorrow’s breakfast. I mean the delicious fish...',
                              by: 'Emma'),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => activityview()),
                          );
                        },
                        child: Dismissible(
                          key: ValueKey(0),
                          background: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff64BC26),
                            ),
                            width: 124,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Complete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEA1601),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          child: ActivityCard(
                              title: 'Hiking on the mou....',
                              description:
                                  'Tomorrow we need to wake up early for hiking on that big mountain. It wil....',
                              by: 'Chandler'),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => activityview()),
                          );
                        },
                        child: Dismissible(
                          key: ValueKey(0),
                          background: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff64BC26),
                            ),
                            width: 124,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Complete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEA1601),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          child: ActivityCard(
                              title: 'View of the sunset',
                              description:
                                  'Out side of that ridge we will see the beautiful sunset. ',
                              by: 'Emma'),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => activityview()),
                          );
                        },
                        child: Dismissible(
                          key: ValueKey(0),
                          background: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff64BC26),
                            ),
                            width: 124,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Complete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEA1601),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          child: ActivityCard(
                              title: 'Find a Place',
                              description:
                                  'We need to find a perfect place for set up our camp’s and where we will...',
                              by: 'you'),
                        ),
                      ),
                      SizedBox(
                        height: 24,
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

Widget ActivityCard({title, description, by}) {
  return Container(
    height: 124,
    width: 335,
    decoration: BoxDecoration(
      color: Color(0xffFAFAFA),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'by $by',
                style: TextStyle(
                    color: Color(0xFFA1A1AA),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: TextStyle(
                color: Color(0xFF3F3F46),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}
