import 'package:application/Design/CustomWidgets/button.dart';
import 'package:application/Design/Pages/navigationBarPage.dart';
import 'package:flutter/material.dart';
import 'package:spinner_input/spinner_input.dart';

class preparebag extends StatefulWidget {
  const preparebag({ Key? key }) : super(key: key);

  @override
  State<preparebag> createState() => _preparebagState();
}

class _preparebagState extends State<preparebag> {

final supplies = [
  CheckBoxState(title:'Sleeping Bag', spinner: 0),
  CheckBoxState(title:'Pillow', spinner: 0),
  CheckBoxState(title:'Sleeping mat or camp bed (If tent camping)', spinner: 0),
  CheckBoxState(title:'Mallet, spare pegs and puller', spinner: 0),
  CheckBoxState(title:'Spare batteries, portable charger and cables', spinner: 0),
  CheckBoxState(title:'Torch and head torch', spinner: 0),
  CheckBoxState(title:'Tent repair kit', spinner: 0),
  CheckBoxState(title:'Paracord', spinner: 0),
  CheckBoxState(title:'Gaffa tape', spinner: 0),
  CheckBoxState(title:'Cable ties', spinner: 0),
  CheckBoxState(title:'Sewing kit', spinner: 0),
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
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ...supplies.map(buildSingleCheckbox).toList(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => navigationBarPage()),
                  );
                },
                child: buttondefault(title: 'Ready'),
              ),
              
            ],),
        ),
          
        
        
    );
  }

  buildSingleCheckbox(CheckBoxState checkbox) => 
    CheckboxListTile(
      title: Text(checkbox.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
      secondary: SpinnerInput(
                spinnerValue: checkbox.spinner,
                minValue: 0,
                maxValue: 200,
                plusButton: SpinnerButtonStyle(
                  color: Colors.white,
                  height: 24,
                  width: 24,
                  elevation: 3,
                  highlightElevation: 10,
                  child: Image.asset('images/+.png'),
                ),
                minusButton: SpinnerButtonStyle(
                  color: Colors.white,
                  height: 24,
                  width: 24,
                  elevation: 3,
                  highlightElevation: 10,
                  child: Image.asset('images/-.png'),
                ),
                onChange: (newValue) {
                  setState(() {
                    checkbox.spinner = newValue;
                  });
                },
              ),
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
  double spinner;

 CheckBoxState({
   required this.title,
   required this.spinner,
   this.value = false,
 }) ;
}