import 'package:application/Design/Pages/catchsnapsempty.dart';
import 'package:application/Design/Pages/editprofile.dart';
import 'package:application/Design/Pages/exittrip.dart';
import 'package:application/Design/Pages/feedback.dart';
import 'package:application/Design/Pages/navigationBarPage.dart';
import 'package:application/Design/Pages/notificationpage.dart';
import 'package:application/Design/Pages/settings.dart';
import 'package:application/Design/Pages/tipsandtricks.dart';
import 'package:flutter/material.dart';

class drawermenu1 extends StatelessWidget {
  const drawermenu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff65A30D),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.png'),
                    backgroundColor: Color(0xffECFCCB),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Will Smith',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => editprofile()),
                          );
                        },
                        child: Icon(
                          Icons.edit_outlined,
                          color: Color(0xffD9F99D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            menulist(
              title: 'Home',
              icnoname: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            menulist(
              title: 'Tips & Tricks',
              icnoname: Icons.question_answer,
              onClicked: () => selectedItem(context, 1),
            ),
            menulist(
              title: 'Notifications',
              icnoname: Icons.notifications,
              onClicked: () => selectedItem(context, 2),
            ),
            menulist(
              title: 'Catch Snaps',
              icnoname: Icons.camera,
              onClicked: () => selectedItem(context, 3),
            ),
            menulist(
              title: 'Settings',
              icnoname: Icons.settings,
              onClicked: () => selectedItem(context, 4),
            ),
            menulist(
              title: 'Feedback',
              icnoname: Icons.feedback,
              onClicked: () => selectedItem(context, 5),
            ),
            menulist(
              title: 'Exit Trip',
              icnoname: Icons.logout,
              onClicked: () => selectedItem(context, 6),
            ),
          ],
        ),
      ),
    );
  }
}

Widget menulist({
  required String title,
  required IconData icnoname,
  VoidCallback? onClicked,
}) {
  return ListTile(
    onTap: onClicked,
    leading: Icon(
      icnoname,
      color: Color(0xffD9F99D),
    ),
    title: Text(
      title,
      style: TextStyle(color: Color(0xffECFCCB)),
    ),
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => navigationBarPage()));
          break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => tipsandtricks()));
          break; 
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => notificationpage()));
          break;  
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => catchsnapsempty()));
          break; 
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settings()));
          break;     
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => feedback()));
          break;                     
    case 6:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => exittrip()));
          break    ;  
  }
}
