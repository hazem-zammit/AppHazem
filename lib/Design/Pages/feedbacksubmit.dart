import 'package:application/Design/CustomWidgets/button.dart';
import 'package:flutter/material.dart';

import 'feedback.dart';

class feedbacksubmit extends StatelessWidget {
  const feedbacksubmit({Key? key}) : super(key: key);

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
                'Thank you for submitting your valuable review. We will read your message soon.',
                style: TextStyle(
                    color: Color(0xff3F3F46),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => feedback()),
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
