import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:travelling_app/auth/login_sign_up.dart';

import 'login_sign_up.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      child: Image.asset(
                    "assets/images/bg3.jpg",
                  )),
                  Positioned(
                      top: 15,
                      left: 15,
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ))
                        ],
                      )),
                  Positioned(
                      top: 200,
                      left: 10,
                      child: Column(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(8.0, 8.0),
                                  blurRadius: 4.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                Shadow(
                                  offset: Offset(8.0, 8.0),
                                  blurRadius: 8.0,
                                  color: Color.fromARGB(100, 0, 0, 100),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 290,
                    left: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: TextFormField(
                        validator: (input) =>
                            input!.isValidEmail() ? null : "Check your email",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          focusColor: Colors.white,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 290,
                    left: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: TextFormField(
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            focusColor: Colors.white,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return " Password Should not be blank";
                            } else if (value.length < 8) {
                              return "Passwords must be at least 8 ";
                            }
                          }),
                    ),
                  ),
                  Positioned(
                    bottom: 220,
                    left: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: TextFormField(
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.white),
                            focusColor: Colors.white,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return " Password Should not be blank";
                            } else if (value.length < 8) {
                              return "Passwords must be at least 8 ";
                            }
                          }),
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    left: 20,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: MaterialButton(
                        height: 60,
                        onPressed: () {
                          setState(() {
                            if (_formkey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_Signup()));
                            }
                          });
                        },
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(18)),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.0),
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                          bottomRight: Radius.circular(18.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.blueAccent,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }
}
