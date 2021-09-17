import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/Screen/account.dart';
import 'package:travelling_app/Screen/favorites.dart';
import 'package:travelling_app/Screen/wallet.dart';

import 'Screen/home_screen.dart';
import 'Screen/map.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    GoogleMaP(),
    Wallet(),
    Favourite(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // SafeArea(child:
        Scaffold(
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      label: 'Home',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.map,
                        color: Colors.black,
                      ),
                      label: 'Map',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.black,
                      ),
                      label: 'Wallet',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                      label: 'Favourite',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      label: 'Account',
                      backgroundColor: Colors.white),
                ],
                // type: BottomNavigationBarType.shifting,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                iconSize: 25,
                onTap: _onItemTapped,
                elevation: 5));
  }
}
