import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  CustomColumn({required this.text, required this.child});

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        child
      ],
    );
  }
}
