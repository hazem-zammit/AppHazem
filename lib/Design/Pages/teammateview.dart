import 'package:flutter/material.dart';

class teammateview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/chevron-left.png'),
        title: Text(
          "Teammate",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 335,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('images/Image-9.png'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Chandler Hallow',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'CHEF',
              style: TextStyle(
                  color: Color(0xffA1A1AA),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset('images/awardyellow.png'),
                Image.asset('images/awardyellow.png'),
                Image.asset('images/awardyellow.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I’m a Chef and I assist in prep work, such as chopping vegetables, but more often will be involved in cooking specialty dishes. Chooses ingredients and designs a menu based on the seasonal availability of food items. Creates unique dishes that inspire guests to come back again and again to see what is new in the restaurant.',
              style: TextStyle(
                  color: Color(0xff3F3F46),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
