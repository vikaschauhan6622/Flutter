import 'package:flutter/material.dart';
import 'package:new_practise/API%20Practise/demo_two.dart';
import 'package:new_practise/Daatabase/demo_sqflite.dart';
import 'package:new_practise/Shared_Prefernce/demo_shared_login.dart';

import 'Add To Favourite/like_dislike.dart';
import 'Drop Down/demo_drop_down.dart';
import 'Drop Down/drop_down_validate.dart';
import 'FireBase/Original Login/firstpage.dart';
import 'FireBase/Original Login/login_page.dart';
import 'Projects/Demo API/api_splash.dart';
import 'Search Option/Floating Search Bar/full_show_search.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: UserList()
        // home: PractiseOne(),
        // home: DemoAnalog(),
        );
  }
}
