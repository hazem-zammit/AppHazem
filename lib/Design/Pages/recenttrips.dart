import 'package:flutter/material.dart';

class recenttrips extends StatelessWidget {
  const recenttrips({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset('images/chevron-left.png')),
        title: Text("Recent Trips" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Illustration.png'),
              SizedBox(height: 20,),
              Text('You don’t have any trips before.',style: TextStyle(color: Color(0xff3F3F46), fontSize: 16, ),),
            ],
          ),
        ),
    );
  }
}