import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Weather%20App/home_screen.dart';

class SS extends StatefulWidget {
  const SS({Key? key}) : super(key: key);

  @override
  _SSState createState() => _SSState();
}

class _SSState extends State<SS> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/Spl.png"),
      ),
    )));
  }
}
