import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Instagram/Screens/reels_page.dart';
import 'package:new_practise/Projects/Instagram/Screens/search_page.dart';

import 'home_screen.dart';
import 'like_page.dart';
import 'my_account.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchPage(),
    ReelsPage(),
    LikePage(),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      label: 'Home',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      label: 'Search',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.slow_motion_video,
                        color: Colors.black,
                      ),
                      label: 'Reels',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      label: 'Like',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    label: 'Profile',
                    backgroundColor: Colors.white,
                  ),
                ],
                type: BottomNavigationBarType.shifting,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                iconSize: 25,
                onTap: _onItemTapped,
                elevation: 5)));
  }
}
