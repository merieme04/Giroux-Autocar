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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Consultation',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffF7A538),
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
