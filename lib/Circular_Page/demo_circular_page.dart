import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoCircular extends StatefulWidget {
  const DemoCircular({Key? key}) : super(key: key);

  @override
  _DemoCircularState createState() => _DemoCircularState();
}

class _DemoCircularState extends State<DemoCircular> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 50,
          width: 50,
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Colors.black54,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
