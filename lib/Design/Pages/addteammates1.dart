import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/addteammates2.dart';
import 'package:flutter/material.dart';

class addteammatesempty extends StatelessWidget {
  const addteammatesempty({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset('images/chevron-left.png')),
        title: Text("Add Teammates" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Illustration.png'),
              SizedBox(height: 20,),
              Text('You didn’t have any teammates added.',style: TextStyle(color: Color(0xff3F3F46), fontSize: 16, ),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => addteammates()),
                  );
                },
                child:buttonsmalloutlined(title: 'Add Teammate'),
              ),
            ],
          ),
        ),
    );
  }
}