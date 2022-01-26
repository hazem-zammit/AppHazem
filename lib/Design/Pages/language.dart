import 'package:application/Design/Pages/drawermenu.dart';
import 'package:flutter/material.dart';

class language extends StatefulWidget {
  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;

  final languages = [
    CheckBoxState(title: 'English'),
    CheckBoxState(title: 'ودُراُ'),
    CheckBoxState(title: 'हिंदी'),
    CheckBoxState(title: 'Español'),
    CheckBoxState(title: 'Deutsche'),
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
        drawermenu(),
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
                  "Language",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: ListView(
                children: [
                  ...languages.map(buildSingleCheckbox).toList(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        title: Text(
          checkbox.title,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        activeColor: Color(0xff84CC16),
        value: checkbox.value,
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}

class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });
}
