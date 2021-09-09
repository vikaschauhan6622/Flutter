import 'package:flutter/material.dart';
import 'package:new_practise/Add%20To%20Favourite/demo_add.dart';
import 'package:new_practise/Web%20View/demo_webview.dart';
import 'package:new_practise/Widget/demo_tooltip.dart';

import 'Add To Favourite/demo_muliple_selection.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SelectLanguageScreen()
      // home: GoogleLogin(),
      // home: DaTA(),
      // home: DemoFav(),
      // home: DemoSignin(),
    );
  }
}
