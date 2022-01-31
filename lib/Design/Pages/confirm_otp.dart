import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/setnewpassword.dart';
import 'package:application/Design/forgetpassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class confirm_otp extends StatefulWidget {
  const confirm_otp({Key? key}) : super(key: key);

  @override
  State<confirm_otp> createState() => _confirm_otpState();
}

class _confirm_otpState extends State<confirm_otp> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text(
          "Confirm OTP",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please confirm your 4 digit OTP. which is sent on this number +1202-555-0174 ',
              style: TextStyle(
                color: Color(0xff71717A),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => forgetpassword()),
                      );
                    },
                    child: Text(
              'Change number.',
              style: TextStyle(
                color: Color(0xff27272A),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
                  ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                    pinTheme: PinTheme(
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 31,
                      activeFillColor: Colors.white,
                      selectedColor: Color(0xff84CC16),
                      activeColor: Colors.black,
                      inactiveColor: Color(0xff71717A),
                    ),
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => setnewpassword()),
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
