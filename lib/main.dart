import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Demo%20API/api_splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()
        // home: PractiseOne(),
        // home: DemoAnalog(),
        );
  }
}
