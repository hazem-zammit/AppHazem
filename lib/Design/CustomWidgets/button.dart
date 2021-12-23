import 'package:flutter/material.dart';


  Widget button({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 14 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF84CC16),
      ),
    );
  }
