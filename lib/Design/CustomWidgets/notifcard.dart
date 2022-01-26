import 'package:flutter/material.dart';

Widget notifcard({icon, title, text}) {
  return Container(
    height: 80,
    width: 335,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xffF7FEE7),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xffECFCCB),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(icon),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff365314),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Color(0xff4D7C0F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget notifcardext({icon, title, text}) {
  return Container(
    height: 95,
    width: 335,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xffF7FEE7),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xffECFCCB),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(icon),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff365314),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 220,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Color(0xff4D7C0F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}