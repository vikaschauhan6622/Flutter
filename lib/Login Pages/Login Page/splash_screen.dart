import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_practise/Login%20Pages/Login%20Page/login_page.dart';

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
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
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
                child: Image.asset("assets/images/zomato.png"),
              ),
            )));
  }
}
