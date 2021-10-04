import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

SharedPreferences? prefs;

class MyApp extends StatelessWidget {
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Shared Preferences Storage, Retrieval & Clear",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(child: Text("Save Data"), onPressed: save),
              ElevatedButton(child: Text("Fetch Data"), onPressed: fetch),
              ElevatedButton(child: Text("Clear Data"), onPressed: remove)
            ],
          ),
        ),
      ),
    );
  }
}

save() async {
  await MyApp.init();

  prefs!.setInt('int', 10);

  prefs!.setString('string', "Abhi");

  prefs!.setDouble('double', 3.14);

  prefs!.setBool('boolean', true);

  prefs!.setStringList('stringlist', ['horse', 'cow', 'sheep']);
}

fetch() async {
  final myInt = prefs!.getInt('int') ?? 0;

  final myDouble = prefs!.getDouble('double') ?? 0.0;

  final myBool = prefs!.getBool('boolean') ?? false;

  final myString = prefs!.getString('string') ?? '';

  final myStringList = prefs!.getStringList('stringlist') ?? [];

  log("\n Int  - $myInt \n double - $myDouble \n boolean - $myBool \n string - $myString \n stringlist - $myStringList");
}

remove() async {
  prefs!.remove('int');
}
