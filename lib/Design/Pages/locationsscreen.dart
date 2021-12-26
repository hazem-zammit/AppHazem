import 'package:application/Design/CustomWidgets/button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:application/Design/Pages/locationsearch.dart';

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
              GestureDetector(
                onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => locationsearch()),
                  );
                },
                child: searchbar(),
              ),
              SizedBox(height: 20,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
              SizedBox(height: 20,),
              Text("Region" ,style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 85,
                    child:Text("Europe" ,style: TextStyle(color: Color(0xffE4E4E7) , fontSize: 24,),), 
                  ),
                  
                  Container(
                    width:230,
                    child:Text("North America" ,style: TextStyle(color: Colors.black , fontSize: 34,fontWeight: FontWeight.bold,),), 
                  ),
                  
                  Container(
                    
                    width: 200,
                    child:Text("South Africa" ,style: TextStyle(color: Color(0xffE4E4E7) , fontSize: 24,),), 
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

class searchbar extends StatelessWidget {
  const searchbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
        Container(
          width:263 ,
          height:48 ,
          child:TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 16),
              contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              filled: true,
              fillColor: Color(0xFFfafafa),
              enabledBorder: OutlineInputBorder (
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Color(0xFFF4F4F5), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.grey, width:2),
              ),        
            ),
          ),
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

final List<String> imgList = [
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1576176539998-0237d1ac6a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx2aXN1YWwtc2VhcmNofDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
];

final List<Widget> imageSliders = imgList
    .map((item) =>  Container(
      
            height: 400,
            width: 260,
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item,fit: BoxFit.fitHeight,height: 400,),
                    Positioned(
                      bottom: -22,
                      left: 0.0,
                      right: 0.0,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'Catalina island',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            buttonsmall(title: 'Explore'),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        )
    .toList();