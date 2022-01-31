import 'package:application/Design/CustomWidgets/notifcard.dart';
import 'package:flutter/material.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset('images/chevron-left.png')),
        title: Text(
          "Notifications",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              '11 Feb 2020',
              style: TextStyle(
                  color: Color(0xffA1A1AA),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 15,
            ),
            notifcard(
                icon: 'images/award.png',
                title: 'Congratulations!',
                text: 'You recieved the welcome badge'),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              '11 Feb 2020',
              style: TextStyle(
                  color: Color(0xffA1A1AA),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 15,
            ),
            notifcard(
                icon: 'images/person-add.png',
                title: 'Will Smith Invite you.',
                text: 'For Catalina Island Trip.'),
          ],
        ),
      ),
    );
  }
}
