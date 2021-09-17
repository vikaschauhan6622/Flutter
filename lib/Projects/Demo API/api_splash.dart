import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Demo%20API/demo_api.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => DemoApi())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.teal,
            Colors.deepPurple,
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      child: Center(
        child: Container(
          child: Image.asset(
            "assets/images/ic_launcher.png",
            fit: BoxFit.cover,
            height: 100,
            width: 100,
            alignment: Alignment.center,
          ),
        ),
      ),
    )));
  }
}
