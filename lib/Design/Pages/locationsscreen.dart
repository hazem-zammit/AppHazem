import 'package:flutter/material.dart';

class locationsscreen extends StatelessWidget {
  const locationsscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text("Locations" ,style: TextStyle(color: Colors.black , fontSize: 20,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              searchbar(),
              SizedBox(height: 20,),
              

            ],

          ),
        ),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
        Container(
          
          height: 48,
          width: 263,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFF4F4F5) ,width: 1),
            color: Color(0xfffafafa), 
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text('Search', style: TextStyle(fontSize: 16,color: Color(0xffA1A1AA)),),
              ],
            ),
          )
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff84CC16),
          ),
          child: Image.asset('images/search.png'),
        ),
      ],
    );
  }
}