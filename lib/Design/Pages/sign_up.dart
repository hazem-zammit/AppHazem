import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/confirm_otp.dart';
import 'package:application/Design/Pages/log_in.dart';
import 'package:flutter/material.dart';

class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Logob.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              'Name',
              style: TextStyle(
                  color: Color(0xff71717A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            txtfieldmedium(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: TextStyle(
                  color: Color(0xff71717A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            txtfieldmedium(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Phone',
              style: TextStyle(
                  color: Color(0xff71717A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            txtfieldmedium(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: TextStyle(
                  color: Color(0xff71717A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
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
                    MaterialPageRoute(
                        builder: (context) => confirm_otp_registration()),
                  );
                },
                child: buttonmedium(title: 'Register')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => log_in()),
                  );
                },
                child: buttonoutlined(title: 'Log In')),
          ],
        ),
      ),
    );
  }
}
