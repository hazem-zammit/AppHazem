import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/log_in.dart';
import 'package:flutter/material.dart';


class passwordchanged extends StatelessWidget {
  const passwordchanged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Illustrationfeedback.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hurrey',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your Password changed successfully. please go back and log-in.',
                style: TextStyle(
                    color: Color(0xff3F3F46),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => log_in()),
                  );
                },
                child: buttondefault(title: 'Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
