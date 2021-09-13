import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: AutoSizeText(
              ' string will be automatically resized to fit in two lines.This string will bestring will be automatically resized to fit in two lines.This string will be automatically resized to fit string will be automatically resized to fit in two lines.This string will be automatically resized to fit string will be automatically resized to fit in two lines.This string will be automatically resized to fit string will be automatically resized to fit in two lines.This string will be automatically resized to fit  automatically resized to fit string will be automatically resized to fit in two lines.This string will be automatically resized to fit in two linesThis string will be automatically resized to fit in two linesThis string will be automatically resized to fit in two linesThis string will be automatically resized to fit in two linesThis string will be automatically resized to fit in two linesThis string will be automatically resized to fit in two lines',
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: DefaultTextStyle.of(context).maxLines,
            ),
          ),
        ),
      ),
    );
  }
}
