import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text(formattedDate,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
    );
  }
}
