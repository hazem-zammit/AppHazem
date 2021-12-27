import 'package:application/Design/Pages/locationview.dart';
import 'package:flutter/material.dart';

class locationsearch extends StatelessWidget {
  const locationsearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/chevron-left.png'),
                  Container(
                    height: 48,
                    width: 223,
                    child: TextField(
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFfafafa),
                      focusColor: Colors.white,
                      enabledBorder: OutlineInputBorder (
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Color(0xff84CC16), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Color(0xff84CC16), width:2),
                      ),        
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff84CC16),
                    ),
                    child: Image.asset('images/search.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(onTap:(){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => locationview()),
                );
              } ,
              child: locationcard(),),
              
            ],
      
          ),
        ),
      ),
      
    );
  }
}

class locationcard extends StatelessWidget {
  const locationcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/Campingimage.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Catalina Island', style: TextStyle(color: Colors.black, fontSize: 20,),),
              SizedBox(height: 5,),
              Text('Los Angeles, California', style: TextStyle(color: Colors.black, fontSize: 12),),
            ],),
        ),
        
      ],
      
    );
  }
}