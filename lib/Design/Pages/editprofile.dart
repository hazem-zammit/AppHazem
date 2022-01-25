import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:flutter/material.dart';

class editprofile extends StatelessWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('images/Avatar.png'),
              Text(
                'Change Profile',
                style: TextStyle(
                    color: Color(0xff84CC16),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          txtfieldmedium(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Message',
            style: TextStyle(color: Color(0xff71717A), fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          msgfield(),
          SizedBox(
            height: 30,
          ),
          buttondefault(title: 'Save'),
        ],
      ),
    );
  }
}
