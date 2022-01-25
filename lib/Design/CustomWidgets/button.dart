import 'package:flutter/material.dart';


  Widget buttondefault({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF84CC16),
      ),
    );
  }


    Widget buttonmedium({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 14 ,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 295,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF84CC16),
      ),
    );
  }

  Widget buttonsmall({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 14 ,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF84CC16),
      ),
    );
  }

  Widget buttonoutlined({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Color(0xFF84CC16), fontSize: 14,fontWeight: FontWeight.w500 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Color(0xFF84CC16) ,width: 1),
      ),
    );
  }

    Widget buttonsmalloutlined({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Color(0xFF84CC16), fontSize: 14,fontWeight: FontWeight.w500 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 134,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Color(0xFF84CC16) ,width: 1),
      ),
    );
  }

      Widget buttonmediumoutlined({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Color(0xFF84CC16), fontSize: 14,fontWeight: FontWeight.w500 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Color(0xFF84CC16) ,width: 1),
      ),
    );
  }

    Widget buttonred({title}) {
    return Container(
      child:Align(
        alignment: Alignment.center,
        child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500 ,),textAlign: TextAlign.center,),
      ),
      height: 44,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFEA1601),
      ),
    );
  }