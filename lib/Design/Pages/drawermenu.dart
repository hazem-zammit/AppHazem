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
                      Icon(
                        Icons.edit_outlined,
                        color: Color(0xffD9F99D),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            menulist(
              title: 'Home',
              icnoname: Icons.home,
            ),
            menulist(
              title: 'How to use',
              icnoname: Icons.question_answer,
            ),
            menulist(title: 'Language', icnoname: Icons.language),
            menulist(title: 'Log-out', icnoname: Icons.logout),
          ],
        ),
      ),
    );
  }
}

class menulist extends StatelessWidget {
  final String title;
  final IconData icnoname;
  const menulist({
    required this.title,
    required this.icnoname,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
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
}