import 'dart:convert';

import 'package:creato/api_calling/api_url.dart';
import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/otp_verification_scrren.dart';
import 'package:creato/screens/select_language%20_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  TextEditingController mobileNumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    img_banner_login,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 260),
                      padding: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            transform:
                                Matrix4.translationValues(0.0, -40.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            child: Image.asset(
                              img_login_logo,
                              width: 70,
                              height: 70,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Login Into App/Signup",
                            style: TextStyle(
                                fontSize: 20,
                                color: splashGradientTwo,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "By Continuing you indicate that you have\nread and agree to the",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Terms of Services",
                            style: TextStyle(
                                fontSize: 15,
                                color: splashGradientTwo,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  readOnly: true,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: blackColor,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "+91 ",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                    fillColor: codeColor,
                                    filled: true,
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(0)),
                                      borderSide: new BorderSide(
                                          width: 0.0, style: BorderStyle.none),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: new BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(0)),
                                      borderSide: new BorderSide(
                                          width: 0.0, style: BorderStyle.none),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: TextFormField(
                                  controller: mobileNumber,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: blackColor,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter Mobile Number ",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                    fillColor: numberColor,
                                    filled: true,
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(10)),
                                      borderSide: new BorderSide(
                                          width: 0.0, style: BorderStyle.none),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: new BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(10)),
                                      borderSide: new BorderSide(
                                          width: 0.0, style: BorderStyle.none),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(stops: [
                                0.4,
                                1
                              ], colors: [
                                splashGradientTwo,
                                splashGradientOne
                              ]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                minimumSize: Size(double.infinity, 55),
                                elevation: 0.0,
                              ),
                              onPressed: () {
                                onUserExistCheck(mobileNumber.text.toString());
                              },
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void onUserExistCheck(var mobile) async {
    setState(() {
      isLoading = true;
    });
    try {
      final body = {"mobile": mobileNumber.text.toString()};
      var response = await http.post(Uri.parse(creatoUserExistUrl), body: body);
      print('response $body');
      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body);
        print('success ');
        print('decode$decode');

        if (decode['success'] == true) {
          print(' user success is true ');
          onLogin(mobile);
          Fluttertoast.showToast(
              msg: decode["message"],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: 16.0);
        } else {
          print(decode);
          setState(() {
            isLoading = false;
          });
          print(' user success is FALSe ');
        }
      } else {
        onRegister(mobile);
        print(response.body.toString());
        print("mamkmm");
        setState(() {
          isLoading = false;
        });
      }

      return;
    } catch (e) {
      print(e.toString());
      setState(() {
        isLoading = false;
      });
    }
  }

  void onLogin(String mobile) async {
    setState(() {
      isLoading = true;
    });
    try {
      final body = {"mobile": mobile};

      var response = await http.post(Uri.parse(creatoLoginUrl), body: body);
      print(response.toString());
      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body) as Map;
        print(decode.toString());
        if (decode['success'] == true) {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setString('id', decode['data'][0]['id'].toString());
          sharedPreferences.setString(
              "name", decode["data"][0]["name"].toString());
          sharedPreferences.setString(
              "username", decode["data"][0]["username"].toString());
          sharedPreferences.setString(
              "email", decode["data"][0]["email"].toString());
          sharedPreferences.setString(
              "mobile", decode["data"][0]["mobile"].toString());
          sharedPreferences.setString(
              "image", decode["data"][0]["image"].toString());
          sharedPreferences.setString(
              "address", decode["data"][0]["address"].toString());
          sharedPreferences.setString("user_verified_at",
              decode["data"][0]["user_verified_at"].toString());
          sharedPreferences.setString("mobile_verified",
              decode["data"][0]["mobile_verified"].toString());
          sharedPreferences.setString(
              "type", decode["data"][0]["type"].toString());
          sharedPreferences.setString(
              "created_at", decode["data"][0]["created_at"].toString());
          sharedPreferences.setString(
              "updated_at", decode["data"][0]["updated_at"].toString());
          sharedPreferences.setString(
              "deleted_at", decode["data"][0]["deleted_at"].toString());
          sharedPreferences.setString(
              "language", decode["data"][0]["language"].toString());
          sharedPreferences.setString("business_details",
              decode["data"][0]["business_details"].toString());
          sharedPreferences.setString(
              "token", decode["data"][0]["token"].toString());
          setState(() {
            isLoading = false;
          });
          Fluttertoast.showToast(
              msg: decode["message"],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: 16.0);

          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SelectLanguageScreen()),
              (Route<dynamic> route) => false);
        } else {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                      titlePadding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      content: Container(
                        height: 50,
                        color: Colors.white,
                        child: Text(
                          "Wrong username/password",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Close",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                        ),
                      ]));
          setState(() {
            isLoading = false;
          });
          print(response.body.toString());
        }
      } else {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                    titlePadding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    content: Container(
                      height: 50,
                      color: Colors.white,
                      child: Text(
                        "Wrong username/password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text("Close",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                      ),
                    ]));
        setState(() {
          isLoading = false;
        });
        print(response.body.toString());
      }

      return;
    } catch (e) {
      print(e.toString());
      setState(() {
        isLoading = false;
      });
    }
  }

  void onRegister(String mobile) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final body = {"mobile": mobile};
    var response = await http.post(Uri.parse(creatoSignUpUrl), body: body);
    if (response.statusCode == 200) {
      var decode = json.decode(response.body);
      print(decode);
      if (decode['success'] == true) {
        setState(() {
          isLoading = false;
        });
        onOtpSend(mobile);
        // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => OtpVerificationScreen(mobileNumber.text.toString(), decode['data']["otp"])), (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        isLoading = false;
      });
      print("The error message is: ${response.body}");
    }
  }

  void onOtpSend(var mobile) async {
    setState(() {
      isLoading = true;
    });
    try {
      var response =
          await http.post(Uri.parse(creatoOtpSend), body: {'mobile': mobile});

      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body);

        if (decode['success'] == true) {
          print(decode['message']);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OtpVerificationScreen(
                      mobileNumber.text.toString(), decode['data'][0]["otp"])));
          print(decode.toString());

          setState(() {
            isLoading = false;
          });
        } else {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                      content: Container(
                        height: 50,
                        color: Colors.white,
                        child: Text(
                          decode['message'].toString(),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text(
                            "close",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                        ),
                      ]));
          print(decode);
          setState(() {
            isLoading = false;
          });
        }
      } else {
        print(response.body.toString());
        setState(() {
          isLoading = false;
        });
      }
      setState(() {
        isLoading = false;
      });
      return;
    } catch (e) {
      print(e.toString());
      setState(() {
        isLoading = false;
      });
    }
  }
}
