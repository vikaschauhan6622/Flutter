import 'package:flutter/material.dart';
import 'package:auto_size_styled_text/auto_size_styled_text.dart';

class DemoAutoStyledText extends StatefulWidget {
  @override
  _DemoAutoStyledTextState createState() => _DemoAutoStyledTextState();
}

class _DemoAutoStyledTextState extends State<DemoAutoStyledText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AutoSizeStyledText Example"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: AutoSizeStyledText(
            text:
                "Lorem <b>Ipsum</b> is simply dummy text of the printing and typesetting industry. <b>Lorem</b> Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            minFontSize: 8,
            tags: {
              'b': AutoSizeStyledTextTag(
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            },
          ),
        ),
      ),
    );
  }
}
