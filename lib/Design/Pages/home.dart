import 'package:application/Design/CustomWidgets/button.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/grid.png'),
        title: Text("Camping Trips" ,style: TextStyle(color: Colors.black , fontSize: 20,),),
        centerTitle: true,
        actions: [Container(
          width: 50,
          child:Image.asset('images/bell.png'),
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
              button(title: 'Start New Trip '),
            ],
          ),
        ),
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
                Text("CMP21992822",style: TextStyle(color: Color(0xFF365314), fontSize: 16),),
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