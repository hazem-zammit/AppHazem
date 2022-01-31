import 'package:application/Design/Pages/editprofile.dart';
import 'package:application/Design/Pages/home.dart';
import 'package:application/Design/Pages/language.dart';
import 'package:application/Design/Pages/logout.dart';
import 'package:application/Design/Pages/howtouse.dart';
import 'package:flutter/material.dart';

class drawermenu extends StatelessWidget {
  const drawermenu({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('images/Avatar.png'),
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
              title: 'How to use',
              icnoname: Icons.question_answer,
              onClicked: () => selectedItem(context, 1),
            ),
            menulist(
              title: 'Language',
              icnoname: Icons.language,
              onClicked: () => selectedItem(context, 2),
            ),
            menulist(
              title: 'Log-out',
              icnoname: Icons.logout,
              onClicked: () => selectedItem(context, 3),
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
    horizontalTitleGap: 10,
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
          .push(MaterialPageRoute(builder: (context) => home()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => howtouse()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => language()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => logout()));
      break;
  }
}
