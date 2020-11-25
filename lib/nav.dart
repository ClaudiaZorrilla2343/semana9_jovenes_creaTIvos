import 'package:flutter/material.dart';
import 'email.dart';
import 'home.dart';
import 'perfil.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Email(),
    Perfil(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.pink), label: ("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.blue), label: ("Email")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.pink), label: ("Profile"))
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        backgroundColor: Colors.yellow[200],
      ),
    );
  }
}
