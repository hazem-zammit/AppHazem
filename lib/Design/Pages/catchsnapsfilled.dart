import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class catchsnapsfilled extends StatefulWidget {
  const catchsnapsfilled({Key? key}) : super(key: key);

  @override
  State<catchsnapsfilled> createState() => _catchsnapsfilledState();
}

class _catchsnapsfilledState extends State<catchsnapsfilled>
    with TickerProviderStateMixin {
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false;
  late AnimationController _animationController;
  late File _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

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
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('14 Feb 2020',style: TextStyle(fontSize: 12,color: Color(0xffA1A1AA)),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 240,
                              width: 155,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset('images/Imagec.png'),
                            ),
                            Container(
                              height: 240,
                              width: 155,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset('images/plus.png'),
                            ),

                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: InkWell(
                          onTap: getImage,
                          child: buttonmedium(title: 'Click New Snap')),
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
