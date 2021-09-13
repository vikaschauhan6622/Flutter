import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonColor extends StatefulWidget {
  const ButtonColor({Key? key}) : super(key: key);

  @override
  _ButtonColorState createState() => _ButtonColorState();
}

class _ButtonColorState extends State<ButtonColor> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: InkWell(
        child: Icon(
          isPressed? Icons.favorite:Icons.favorite_border,
          color: (isPressed) ? Color(0xFFEC0924) : Color(0xFF0C0101),
        ),
        onTap: () {
          setState(() {
            isPressed = true;
          });
        },
      )),
    ));
  }
}
