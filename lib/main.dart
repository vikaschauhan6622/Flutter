import 'package:flutter/material.dart';

import 'Projects/Demo API/demo_api.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DemoApi()
        // home: DemoHomeAPI(),
        // home: DemoAnalog(),
        );
  }
}
