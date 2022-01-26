import 'package:percent_indicator/percent_indicator.dart';
import 'package:application/Design/Pages/drawermenu1.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class fitness extends StatefulWidget {
  const fitness({Key? key}) : super(key: key);

  @override
  State<fitness> createState() => _fitnessState();
}

class _fitnessState extends State<fitness> with TickerProviderStateMixin {
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
                  "Fitness",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                actions: [Image.asset('images/Sync.png')],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Text('Fitness Status',style: TextStyle(fontSize: 32,fontWeight:FontWeight.w600),),
                        SizedBox(width: 10,),
                        Image.asset('images/Ellipse.png'),
                      ],
                    ), 
                    SizedBox(height: 5,),
                    Text('You are very good in fitness!',style: TextStyle(color: Color(0xff3F3F46),fontSize: 14,fontWeight:FontWeight.w400),),   
                    SizedBox(height: 30,),
                    FitnessCard(image:'images/running-man.png',title:'Running',description:'200 steps',percentage:80),
                    SizedBox(height: 25,),
                    FitnessCard(image:'images/man-on-mountain.png',title:'Hiking',description:'3Mil',percentage:90),
                    SizedBox(height: 25,),
                    FitnessCard(image:'images/man-drowing.png',title:'Swim',description:'0%',percentage:00),
                    SizedBox(height: 25,),
                    FitnessCard(image:'images/boy-doing-pushups.png',title:'Pushups',description:'10',percentage:20),
                    SizedBox(height: 30,),
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

Widget FitnessCard({image,title,description,percentage})
{
  return Container(
    height: 130,
    width: 335,
    decoration: BoxDecoration(
      color: Color(0xffF7FEE7),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(image),
                  Text(title,style: TextStyle(color:Color(0xff365314),fontSize: 20,fontWeight:FontWeight.w600),),
                ],
              ),
              Text(description,style: TextStyle(color:Color(0xff365314),fontSize: 20,fontWeight:FontWeight.w400),),
            ],
          ),
          Row(
            children: [
              Text(percentage.toString(),style: TextStyle(color:Color(0xff365314),fontSize: 20,fontWeight:FontWeight.w400),),
              Text('%',style: TextStyle(color:Color(0xff365314),fontSize: 20,fontWeight:FontWeight.w400),),
            ],
          ),
          LinearPercentIndicator(
                width: 287.0,
                lineHeight: 14.0,
                percent: percentage/100,
                backgroundColor: Color(0xffD9F99D),
                progressColor: Color(0xff84CC16),
              ),

        ],
      ),
    ),
  );
}
