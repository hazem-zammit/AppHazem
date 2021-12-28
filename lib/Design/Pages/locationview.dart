
import 'package:application/Design/CustomWidgets/button.dart';
import 'package:flutter/material.dart';

class locationview extends StatelessWidget {
  const locationview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/catalinaisland.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.arrow_back_ios_sharp , color: Colors.white,),
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Catalina island' ,style: TextStyle(color: Colors.white, fontSize: 32 , fontWeight: FontWeight.w600),),
                    Text('Los Angeles, California' ,style: TextStyle(color: Colors.white, fontSize: 16 ,fontWeight: FontWeight.w500,),),
                    SizedBox(height: 20,),
                    Text("One of California’s Channel Islands, lies southwest of Los Angeles. It's known for its wildlife, dive sites and Mt. Orizaba, its highest peak. The resort town of Two Harbors lies to the north. Best for Campers." ,style: TextStyle(color: Color(0xffD4D4D8), fontSize: 16 ,),),
                    SizedBox(height: 20,),
                    buttonmedium(title: 'Select Location'),
                    SizedBox(height: 20,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}