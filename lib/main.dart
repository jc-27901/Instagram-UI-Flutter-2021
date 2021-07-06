import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homePageUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BootomNavigationBar(),
    );
  }
}

class BootomNavigationBar extends StatefulWidget {
  @override
  _BootomNavigationBarState createState() => _BootomNavigationBarState();
}

class _BootomNavigationBarState extends State<BootomNavigationBar> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }

  List<Widget> _widget = [
    HomePageInstagram(),
    Text(
      'This is a search screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'You have nothing to post!',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'Your Feed screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'User Profile screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widget[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.search,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.plusSquare,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 3
                    ? FontAwesomeIcons.solidHeart
                    : FontAwesomeIcons.heart),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 4
                    ? FontAwesomeIcons.userAlt
                    : FontAwesomeIcons.user),
                label: ''),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          iconSize: 30,
          onTap: _onItemTap,
          backgroundColor: Colors.white,
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false,
        ));
  }
}
