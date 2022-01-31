import 'package:application/Design/Pages/activities.dart';
import 'package:application/Design/Pages/backpack.dart';
import 'package:application/Design/Pages/fitness.dart';
import 'package:application/Design/Pages/teammatespage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navigationBarPage extends StatefulWidget {
  @override
  _navigationBarPageState createState() => _navigationBarPageState();
}

class _navigationBarPageState extends State<navigationBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> screens = <Widget>[
    activities(),
    fitness(),
    backpack(),
    teammatespage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        height: 98,
        decoration: BoxDecoration(
          color: Color(0xff84CC16),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              haptic: true,
              tabBorderRadius: 16,
              curve: Curves.easeOutExpo,
              duration: Duration(milliseconds: 100),
              gap: 8,
              color: Colors.white,
              activeColor: Colors.white,
              iconSize: 24,
              tabBackgroundColor: Color(0xff65A30D),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              tabs: [
                GButton(
                  icon: Icons.file_present,
                  text: 'Activities',
                ),
                GButton(
                  icon: Icons.add_reaction,
                  text: 'Fitness',
                ),
                GButton(
                  icon: Icons.backpack,
                  text: 'Backpack',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Teammates',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
