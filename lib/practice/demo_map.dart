import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoOne extends StatefulWidget {
  const DemoOne({Key? key}) : super(key: key);

  @override
  _DemoOneState createState() => _DemoOneState();
}

class _DemoOneState extends State<DemoOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold());
  }
}
