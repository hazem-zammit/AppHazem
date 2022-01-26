import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';
import 'package:spinner_input/spinner_input.dart';

class backpack extends StatefulWidget {
  const backpack({Key? key}) : super(key: key);

  @override
  State<backpack> createState() => _backpackState();
}

class _backpackState extends State<backpack> with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;

  final backpackitems = [
    backpackcard(title: 'Pillows', image: 'images/Image1.png', spinner: 0),
    backpackcard(
        title: 'Sleeping Bag', image: 'images/Image-1.png', spinner: 0),
    backpackcard(title: 'Tent', image: 'images/Image-2.png', spinner: 0),
    backpackcard(
        title: 'AAA Batteries', image: 'images/Image-3.png', spinner: 0),
    backpackcard(title: 'Shoes', image: 'images/Image-4.png', spinner: 0),
    backpackcard(title: 'Camera', image: 'images/Image-5.png', spinner: 0),
    backpackcard(title: 'Charger', image: 'images/Image.png', spinner: 0),
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
                  "Backpack",
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
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    ...backpackitems.map(buildSingleBackpack).toList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildSingleBackpack(backpackcard backp) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(backp.image),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    backp.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SpinnerInput(
                spinnerValue: backp.spinner,
                minValue: 0,
                maxValue: 200,
                plusButton: SpinnerButtonStyle(
                  color: Colors.white,
                  height: 24,
                  width: 24,
                  elevation: 3,
                  highlightElevation: 10,
                  child: Image.asset('images/+.png'),
                ),
                minusButton: SpinnerButtonStyle(
                  color: Colors.white,
                  height: 24,
                  width: 24,
                  elevation: 3,
                  highlightElevation: 10,
                  child: Image.asset('images/-.png'),
                ),
                onChange: (newValue) {
                  setState(() {
                    backp.spinner = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      );
}

class backpackcard {
  final String title;
  final String image;
  double spinner;

  backpackcard({
    required this.title,
    required this.image,
    required this.spinner,
  });
}
