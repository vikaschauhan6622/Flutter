import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Instagram/Auth/login_page.dart';
import 'package:new_practise/Projects/Instagram/Auth/sign_up.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      buildShowDialog(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Instagram-Logo.png",
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(elevation: 5),
                child: Text(
                  'Log in with Facebook',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          Text("OR", style: TextStyle(color: Colors.grey)),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUP()));
            },
            child: Text(
              'Sign up with email or phone number',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.black38,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Alreday have an account?',
                  style: TextStyle(color: Colors.black54)),
              InkWell(
                  onTap: () {
                    // buildShowDialog(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text('Log in.',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          )),
        ],
      )),
    )));
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              // backgroundColor: Colors.red,
              title: Container(
                child: Column(
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              content: Text('Welcome to Instagram Updated Version...'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back')),
                ElevatedButton(onPressed: () {}, child: Text('Ok'))
              ],
            ));
  }
}
