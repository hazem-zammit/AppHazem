import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/addtripform.dart';
import 'package:application/Design/Pages/drawermenu.dart';
import 'package:application/Design/Pages/notifications.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin{
  double translateX = 0;
  double translateY = 0;
  double scale = 1;
  bool toggle = false ;
  late AnimationController _animationController ;

  @override
  void initState() {
    _animationController =AnimationController(vsync: this, duration: Duration(milliseconds:300 ) );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        drawermenu(),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          transform: Matrix4.translationValues(translateX, translateY, 0)..scale(scale),
          child: ClipRRect(
            borderRadius:(toggle)? BorderRadius.circular(20): BorderRadius.circular(0),
            child: Scaffold(
              appBar: AppBar(
                leading:IconButton(
                  icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
                  color:Colors.black,
                  progress: _animationController),
                  onPressed: (){
                    toggle= !toggle;
                    if(toggle){
                      translateX = 200 ;
                      translateY= 80 ;
                      scale=0.8;
                      _animationController.forward();
                    } else{
                      translateX = 0 ;
                      translateY= 0 ;
                      scale=1;
                      _animationController.reverse();
                    }
                    setState(() {
                    });
                  },
                ),
                title: Text("Camping Trips" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500),),
                centerTitle: true,
                actions: [Container(
                  width: 50,
                  child:
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => notifications()),
                        );
                      },
                      child: Image.asset('images/bell.png'),
                    ),
                  
                )],
                backgroundColor: Colors.transparent,
                elevation: 0,
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox( height: 20, ),
                      idbox(),
                      SizedBox( height: 90, ),
                      Image.asset('images/Illustration.png'),
                      SizedBox( height: 30, ),
                      Text("You didn’t add any trips before.", style: TextStyle(color:Color(0xFF3F3F46) , fontSize: 16),),
                      SizedBox( height: 130, ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => addtripform()),
                          );
                        },
                        child: buttondefault(title: 'Start New Trip '),
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


class idbox extends StatelessWidget {
  const idbox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("your ID",style: TextStyle(color: Color(0xFF65A30D), fontSize: 14),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CMP21992822",style: TextStyle(color: Color(0xFF365314), fontSize: 16,fontWeight: FontWeight.w500),),
                Image.asset('images/copy.png') ,
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFAFAFA),
      ),
      height: 81,
      width: 335,
    );
  }
}