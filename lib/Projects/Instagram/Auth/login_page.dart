import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Instagram/Auth/main_page.dart';
import 'package:new_practise/Projects/Instagram/Auth/sign_up.dart';

import '../Screens/bottom_navigation_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  TextEditingController usernameController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Instagram-Logo.png",
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "User Id",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  //controller: namecontroller ,
                  keyboardType: TextInputType.text,
                  obscureText: !_obscureText,
                  //This will obscure text dynamically
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 24,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigation(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(elevation: 5),
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot your login details? ',
                      style: TextStyle(color: Colors.black54, fontSize: 15)),
                  Text('Get help signing in.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(elevation: 5),
                    child: Text(
                      'Log in as @vikas',
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Text(
                "OR",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account? ',
                      style: TextStyle(color: Colors.black54)),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUP()));
                          },
                          child: Text('Sign up',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
              )),
              SizedBox(
                height: 20,
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
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text('Instagram from Facebook',
                          style: TextStyle(color: Colors.grey))),
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
