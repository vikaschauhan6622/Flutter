import 'package:flutter/material.dart';
import 'package:responsive_text_field/responsive_text_field.dart';

class DemoResponsiveTextFeild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: ResponsiveTextField(
              availableWidth: MediaQuery.of(context).size.width - 4,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red))),
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
