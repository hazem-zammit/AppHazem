import 'package:application/Design/Pages/locationsscreen.dart';
import 'package:flutter/material.dart';
import 'package:application/Design/CustomWidgets/button.dart';

class addtripform extends StatelessWidget {
  const addtripform({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text("Add New Trip" ,style: TextStyle(color: Colors.black , fontSize: 20,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Trip Name" ,style: TextStyle(color: Color(0xFF71717A) , fontSize: 16),),
              SizedBox(height: 8,),
              txtfield(),
              SizedBox(height: 20,),
              Text("Location" ,style: TextStyle(color: Color(0xFF71717A) , fontSize: 16),),
              SizedBox(height: 8,),
              txtfield(),
              SizedBox(height: 16,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => locationsscreen()),
                  );
                },
                child: buttonsmalloutlined(title: "View Locations"), 
              ),
              
              SizedBox(height: 20,),
              Text("Teammates" ,style: TextStyle(color: Color(0xFF71717A) , fontSize: 16),),
              SizedBox(height: 8,),
              box(),
              SizedBox(height: 16,),
              buttonmediumoutlined(title: 'Add New Teammates'),
              SizedBox(height: 20,),
              datepicker(),
              SizedBox(height: 24,),
              buttondefault(title: 'Start'),
            ],

          ),
        ),
    );
  }
}


class txtfield extends StatelessWidget {
  const txtfield({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:335 ,
      height:48 ,
      child:TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFfafafa),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder (
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFFF4F4F5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xff84CC16), width:2),
          ),        
        ),
      ),
    );
  }
}

class box extends StatelessWidget {
  const box({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child:Image.asset('images/plus.png'),
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFfafafa),
        border: Border.all(color: Color(0xFFF4F4F5) ,width: 1),
      ),
    );
  }
}

class datepicker extends StatelessWidget {
  const datepicker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pick Date' , style: TextStyle(color: Color(0xFFA1A1AA), fontSize: 16 ),),
              Image.asset('images/chevron-down.png'),
            ],
          ),
        ),
      ),
      height: 48,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFfafafa),
      ),
    );
  }
}