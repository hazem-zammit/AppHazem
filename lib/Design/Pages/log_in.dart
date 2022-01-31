import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/home.dart';
import 'package:application/Design/forgetpassword.dart';
import 'package:flutter/material.dart';

class log_in extends StatelessWidget {
  const log_in({Key? key}) : super(key: key);

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
              height: 60,
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
                  MaterialPageRoute(builder: (context) => forgetpassword()),
                );
              },
              child: Center(
                  child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Color(0xffA1A1AA),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
                child: buttonmedium(title: 'Log In')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
                child: buttonoutlined(title: 'Register')),
          ],
        ),
      ),
    );
  }
}
