import 'package:flutter/material.dart';

class addactivity extends StatelessWidget {
  const addactivity({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text("Add activity" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500,),),
        actions: [
          Image.asset('images/checkmark.png'),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Add Heading",
                    hintStyle:TextStyle(color:Color(0xffD4D4D8),fontSize: 24,fontWeight:FontWeight.w600, ) ),
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Add Description",
                    hintStyle:TextStyle(color:Color(0xffD4D4D8),fontSize: 16,fontWeight:FontWeight.w400, ) ),
              ),
            ],
          ),
        ),
    );
  }
}