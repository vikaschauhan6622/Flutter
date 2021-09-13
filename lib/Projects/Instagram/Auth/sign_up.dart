import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: DefaultTabController(
          length: 5,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.music_note)),
                    Tab(icon: Icon(Icons.music_video)),
                    Tab(icon: Icon(Icons.camera_alt)),
                    Tab(icon: Icon(Icons.grade)),
                    Tab(icon: Icon(Icons.email)),
                  ],
                ),
                TabBarView(
                  children: [
                    Icon(Icons.music_note),
                    Icon(Icons.music_video),
                    Icon(Icons.camera_alt),
                    Icon(Icons.grade),
                    Icon(Icons.email),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
