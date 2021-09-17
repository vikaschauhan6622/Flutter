import 'package:creato/commons/colors_common.dart';
import 'package:creato/screens/dashboard/account/account_screen.dart';
import 'package:creato/screens/dashboard/custom/custome_screen.dart';
import 'package:creato/screens/dashboard/download/downloads_screen.dart';
import 'package:creato/screens/dashboard/home/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  AnimationController? _controller;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CustomScreen(),
    DownloadsScreen(),
    AccountScreen(),
  ];

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: greyColor,
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          mouseCursor: SystemMouseCursors.grab,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          unselectedItemColor: Colors.grey,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme:
              IconThemeData(color: Theme.of(context).primaryColor, size: 30),
          selectedItemColor: Theme.of(context).primaryColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: greyColor,
              ),
              label: 'home',
              activeIcon: Icon(
                Icons.home_outlined,
                color: redColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_customize,
                color: greyColor,
              ),
              label: 'CUSTOM',
              activeIcon: Icon(
                Icons.dashboard_customize,
                color: redColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.download_outlined,
                color: greyColor,
              ),
              label: 'DOWNLOADS',
              activeIcon: Icon(
                Icons.download_outlined,
                color: redColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: greyColor,
              ),
              label: 'ACCOUNT',
              activeIcon: Icon(
                Icons.account_circle_outlined,
                color: redColor,
              ),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
