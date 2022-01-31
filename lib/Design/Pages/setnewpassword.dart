import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/confirm_otp.dart';
import 'package:application/Design/passwordchanged.dart';
import 'package:flutter/material.dart';

class setnewpassword extends StatelessWidget {
  const setnewpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text(
          "New Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Enter your new password below and please don’t forget it now. it’s important to you to remember your password.',
              style: TextStyle(
                color: Color(0xff71717A),
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set Password',
                    style: TextStyle(
                      color: Color(0xff71717A),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  passwordfield(),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => passwordchanged()),
                      );
                    },
                    child: buttonmedium(title: 'Send'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
