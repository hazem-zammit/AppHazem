import 'package:flutter/material.dart';


class notifications extends StatelessWidget {
  const notifications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text("Notifications" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('11 Feb 2020',style: TextStyle(color: Color(0xffA1A1AA),fontSize: 12,fontWeight: FontWeight.w400),)),
              SizedBox(height: 15,),
              notifcard(icon:'images/award.png',title:'Congratulations!',text:'You recieved the welcome badge'),
              SizedBox(height: 20,),
              Center(child: Text('11 Feb 2020',style: TextStyle(color: Color(0xffA1A1AA),fontSize: 12,fontWeight: FontWeight.w400),)),
              SizedBox(height: 15,),
              notifcard(icon:'images/person-add.png' ,title:'Will Smith Invite you.',text:'For Catalina Island Trip.'),
              
            ],
          ),
        ),
    );
  }
}


  Widget notifcard({icon,title,text}) {
    return Container(
      height: 80,
      width:335 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffF7FEE7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width:48 ,
              decoration: BoxDecoration(
                color: Color(0xffECFCCB),
                borderRadius: BorderRadius.circular(16),
              ),
              child:Image.asset(icon),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(color: Color(0xff365314),fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                Text(text,style: TextStyle(color: Color(0xff4D7C0F),fontSize: 14 ,fontWeight: FontWeight.w400),),
              ],
            ),
          ],
        ),
      ),
    );
  }
