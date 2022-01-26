import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class tipsandtricks extends StatefulWidget {
  const tipsandtricks({Key? key}) : super(key: key);

  @override
  State<tipsandtricks> createState() => _tipsandtricksState();
}

class _tipsandtricksState extends State<tipsandtricks>
    with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;

  final tipsandtricksitems = [
    tipsandtrickscard(
        title: 'Use these camping tips, tricks and hacks to make yo..',
        image: 'images/Image-10.png',
        description:
            'Camping connects you with the quiet majesty of nature, allowing....'),
    tipsandtrickscard(
        title: 'These camping food hacks will definately make your c....',
        image: 'images/Image-11.png',
        description:
            'As everyone knows that making food is always hard when you do...'),
    tipsandtrickscard(
        title: 'Top ten must carry equipments for your next c....',
        image: 'images/Image-12.png',
        description:
            'In this tip we have a list of compulsary taken equipments for...'),
    tipsandtrickscard(
        title: 'Make a lantern out of a headlamp and a jug of wat...',
        image: 'images/Image-13.png',
        description:
            'All you need is your headlamp and a gallon jug of water or large wat....'),
    tipsandtrickscard(
        title: 'Line your bag with a garbage bag to keep contents dry',
        image: 'images/Image-14.png',
        description:
            'Weather is everything when you’re camping, and a seasoned campe...'),
    tipsandtrickscard(
        title: 'Make a Makeshift Grommet by Tying Line Around a Roc...',
        image: 'images/Image-15.png',
        description:
            'Tarp grommets wear out quickly and often when you need them....'),
    tipsandtrickscard(
        title: 'Burn Sage in Your Campfire to Help Repel Mosquitoes',
        image: 'images/Image-16.png',
        description:
            'Mosquitoes can dampen an otherwise great camping experience. Knowing '),
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
                  "Tips & Tricks",
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
                    ...tipsandtricksitems.map(buildSinglePost).toList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildSinglePost(tipsandtrickscard post) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(post.image),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    post.description,
                    style: TextStyle(
                        color: Color(0xff94949D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      );
}

class tipsandtrickscard {
  final String title;
  final String description;
  final String image;

  tipsandtrickscard({
    required this.title,
    required this.description,
    required this.image,
  });
}
