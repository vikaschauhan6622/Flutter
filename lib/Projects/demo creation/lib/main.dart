import 'package:creato/commons/colors_common.dart';
import 'package:creato/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: redColor,
          //scaffoldBackgroundColor: redColor,
        ),
        home: SplashScreen());
  }
}
