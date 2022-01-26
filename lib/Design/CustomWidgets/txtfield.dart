import 'package:flutter/material.dart';


class msgfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:335 ,
      child:TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFfafafa),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder (
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFFF4F4F5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xff84CC16), width:2),
          ),        
        ),
      ),
    );
  }
}

class txtfield extends StatelessWidget {
  const txtfield({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:335 ,
      height:48 ,
      child:TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFfafafa),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder (
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFFF4F4F5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xff84CC16), width:2),
          ),        
        ),
      ),
    );
  }
}


class txtfieldmedium extends StatelessWidget {
  const txtfieldmedium({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:295 ,
      height:48 ,
      child:TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFfafafa),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder (
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFFF4F4F5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xff84CC16), width:2),
          ),        
        ),
      ),
    );
  }
}