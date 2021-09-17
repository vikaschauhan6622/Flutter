import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelling_app/auth/login_sign_up.dart';

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
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login_Signup())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Stack(
      children: [
        Container(
          child: Image.asset(
            "assets/images/Splash-Screen-UI.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
        Positioned(
          top: 90,
          left: 120,
          child: Container(
              child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 35,
            ),
          )),
        ),
        Positioned(
          top: 230,
          left: 150,
          child: Container(
              child: Text(
            "To",
            style: TextStyle(
              fontSize: 35,
            ),
          )),
        ),
        Positioned(
          top: 400,
          left: 70,
          child: Container(
              child: Text(
            "Your",
            style: TextStyle(
              fontSize: 35,
            ),
          )),
        ),
        Positioned(
          bottom: 200,
          left: 200,
          child: Container(
              child: Text(
            "Journey...",
            style: TextStyle(
              fontSize: 35,
            ),
          )),
        ),
      ],
    ))));
  }
}
