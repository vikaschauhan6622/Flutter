import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  var onTap;

  CustomContainer(
      {required this.child,
      required this.height,
      required this.width,
      required this.color,
      this.onTap});

  final Widget child;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
        child: child,
      ),
    );
  }
}
