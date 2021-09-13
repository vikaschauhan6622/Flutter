import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PP extends StatefulWidget {
  const PP({Key? key}) : super(key: key);

  @override
  _PPState createState() => _PPState();
}

class _PPState extends State<PP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Center(child: Text("About Us"))),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Privacy Policy :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                        '''This privacy policy ("Policy") describes how the personally identifiable information ("Personal Information") you may provide on the govtcareerjob website ("Website" or "Service") and any of its related products and services (collectively, "Services") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you ("User", "you" or "your") and this Website operator ("Operator", "we", "us" or "our"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.'''),
                    // Text("")
                  ],
                ),
              ))),
    );
  }
}
