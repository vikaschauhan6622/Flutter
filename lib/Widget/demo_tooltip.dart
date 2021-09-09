import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Tooltip(
                    waitDuration: Duration(seconds: 1),
                    showDuration: Duration(seconds: 2),
                    padding: EdgeInsets.all(5),
                    height: 35,
                    textStyle: TextStyle(
                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.green),
                    message: 'My Account',
                    child: FlatButton(
                      onPressed: () {  },
                      child: Icon(
                        Icons.account_box,
                        size: 100,
                      ),
                    )),
              ),
            ]
        ),
      ),
    );
  }
}