import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class FloatMenu extends StatefulWidget {
  const FloatMenu({Key? key}) : super(key: key);

  @override
  State<FloatMenu> createState() => _FloatMenuState();
}

class _FloatMenuState extends State<FloatMenu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Not find',
    ),
    Text(
      ' Not find',
    ),
    Text(
      'Not find',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 15.0, left: 23, right: 23),
        child: FloatingNavbar(
          iconSize:27
          ,fontSize: 13,
          borderRadius: 10,
          width: 350,
          elevation: 28,
          itemBorderRadius: 10,
          selectedBackgroundColor: Color(0xffF7A538),
          backgroundColor: Color(0xffEFF2F9),
          items: [
            FloatingNavbarItem(

              icon: Icons.home,
              title: 'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.settings,
              title: 'Services',
            ),
            FloatingNavbarItem(
              icon: Icons.message,
              title: 'Consultation',
            ),
            FloatingNavbarItem(
              icon: Icons.person,
              title: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffffffff),
          unselectedItemColor: Colors.black54,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
