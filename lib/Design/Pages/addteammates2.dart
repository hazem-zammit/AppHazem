import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:flutter/material.dart';

class addteammates extends StatelessWidget {
  const addteammates({ Key? key }) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text('Say your teammate to log-in first on Camping App. then your teammate will automatically recieve the ID. Then put the ID here and he will recieve the notification of invite. When he accept the request he’ll automatically add on to your team.',style: TextStyle(color: Color(0xff71717A), fontSize: 16,),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID',style: TextStyle(color: Color(0xff71717A), fontSize: 16,),),
                  SizedBox(height: 10,),
                  txtfieldmedium(),
                  SizedBox(height: 20,),
                  buttonmedium(title: 'Sent Request'),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}