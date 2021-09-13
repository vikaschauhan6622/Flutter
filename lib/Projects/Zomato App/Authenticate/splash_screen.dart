import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Zomato%20App/Authenticate/login_screen.dart';

class SS extends StatefulWidget {
  const SS({key}) : super(key: key);

  @override
  _SSState createState() => _SSState();
}

class _SSState extends State<SS> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DemoLoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.redAccent,
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/zomato.png"),
              ),
            )));
  }
}
