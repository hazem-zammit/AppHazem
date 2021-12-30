import 'package:flutter/material.dart';


class preparebag extends StatefulWidget {
  const preparebag({ Key? key }) : super(key: key);

  @override
  State<preparebag> createState() => _preparebagState();
}

class _preparebagState extends State<preparebag> {

final supplies = [
  CheckBoxState(title:'Sleeping Bag'),
  CheckBoxState(title:'Pillow'),
  CheckBoxState(title:'Sleeping mat or camp bed (If tent camping)'),
  CheckBoxState(title:'Mallet, spare pegs and puller'),
  CheckBoxState(title:'Spare batteries, portable charger and cables'),
  CheckBoxState(title:'Torch and head torch'),
  CheckBoxState(title:'Tent repair kit'),
  CheckBoxState(title:'Paracord'),
  CheckBoxState(title:'Gaffa tape'),
  CheckBoxState(title:'Cable ties'),
  CheckBoxState(title:'Sewing kit'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text("Prepare your Bag " ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w500,),),
        actions: [
          Image.asset('images/plus1.png'),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body:ListView(
          children: [
            ...supplies.map(buildSingleCheckbox).toList(),
          ],),
        
        
    );
  }

  buildSingleCheckbox(CheckBoxState checkbox) => 
    CheckboxListTile(
      title: Text(checkbox.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
      secondary: Container(
        width: 70,
        height: 30,
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle
                ),
              child: Image.asset('images/-.png'),
            ),
            SizedBox(width: 7,),
            Text('1',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),),
            SizedBox(width: 7,),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                shape:BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset('images/+.png'),
            ),
          ],
        ),
        ) ,
      controlAffinity: ListTileControlAffinity.leading,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      activeColor: Color(0xff84CC16),
      value: checkbox.value, 
      onChanged: (value) => setState(() => checkbox.value=value! ), 
    );
}



class CheckBoxState {
  final String title ;
  bool value ;

 CheckBoxState({
   required this.title,
   this.value = false,
 }) ;
}