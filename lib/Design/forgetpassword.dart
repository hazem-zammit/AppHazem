import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/confirm_otp.dart';
import 'package:flutter/material.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text(
          "Forgot Password",
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
              'To get your new password you need to put your phone number down below. and we will send you an OTP on that number for confirmation.',
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
                    'Phone',
                    style: TextStyle(
                      color: Color(0xff71717A),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  txtfieldmedium(),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => confirm_otp()),
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
