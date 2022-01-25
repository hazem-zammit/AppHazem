import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:application/Design/Pages/teammateview.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class teammatespage extends StatefulWidget {
  const teammatespage({Key? key}) : super(key: key);

  @override
  State<teammatespage> createState() => _teammatespageState();
}

class _teammatespageState extends State<teammatespage>
    with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;

  final teammatespageitems = [
    teammatespagecard(
        name: 'Chandler Hallow', image: 'images/Image-8.png', position: 'Chef'),
    teammatespagecard(
        name: 'Emma Linch',
        image: 'images/Image-6.png',
        position: 'Environment Expert'),
    teammatespagecard(
        name: 'Mike Alen', image: 'images/Image-7.png', position: 'Farmer'),
    teammatespagecard(
        name: 'You', image: 'images/Avatar.png', position: 'Web Developer'),
  ];

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
                  "Teammates",
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
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  children: [
                    ...teammatespageitems.map(buildSingleTeammate).toList(),
                  ],
                ),
              ),
              bottomNavigationBar: Container(
                height: 98,
                decoration: BoxDecoration(
                  color: Color(0xff84CC16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: GNav(
                        haptic: true,
                        tabBorderRadius: 16,
                        curve: Curves.easeOutExpo,
                        duration: Duration(milliseconds: 100),
                        gap: 8,
                        color: Colors.white,
                        activeColor: Colors.white,
                        iconSize: 24,
                        tabBackgroundColor: Color(0xff65A30D),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        tabs: [
                          GButton(
                            icon: Icons.file_present,
                            text: 'Activities',
                          ),
                          GButton(
                            icon: Icons.add_reaction,
                            text: 'Fitness',
                          ),
                          GButton(
                            icon: Icons.backpack,
                            text: 'Backpack',
                          ),
                          GButton(
                            icon: Icons.people,
                            text: 'Teammates',
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildSingleTeammate(teammatespagecard person) => Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => teammateview()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(person.image),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      person.position,
                      style: TextStyle(
                          color: Color(0xff94949D),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      );
}

class teammatespagecard {
  final String name;
  final String position;
  final String image;

  teammatespagecard({
    required this.name,
    required this.position,
    required this.image,
  });
}
