import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ab extends StatefulWidget {
  const Ab({Key? key}) : super(key: key);

  @override
  _AbState createState() => _AbState();
}

class _AbState extends State<Ab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Center(child: Text("About Us"))),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Us :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Text(
                      '''Welcome to Weather app,your number one  source for all things weather,We're dedicated to giving you the very best of weather,with a focus on customer service and uniqueness  We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.),
                   
(Sincerely,)
(Founder)''')
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
