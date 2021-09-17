import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/select_language%20_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:page_transition/page_transition.dart';

class OtpVerificationScreen extends StatefulWidget {
  var mobile, otp;

  OtpVerificationScreen(this.mobile, this.otp);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              ic_backarrow,
                              width: 35,
                              height: 35,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 260,
                      ),
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
                            padding: EdgeInsets.all(8),
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
                            "OTP Verification",
                            style: TextStyle(
                                fontSize: 20,
                                color: splashGradientTwo,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enter otp sent to +91-760074XXXX ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          OTPTextField(
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 50,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textFieldAlignment: MainAxisAlignment.spaceEvenly,
                            fieldStyle: FieldStyle.box,
                            obscureText: true,
                            otpFieldStyle: OtpFieldStyle(
                              backgroundColor: codeColor,
                              borderColor: codeColor,
                            ),
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't receive the OTP ? ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "RESEND OTP",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: splashGradientTwo,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //Send Button otp
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
                                Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.scale,
                                      alignment: Alignment.bottomCenter,
                                      child: SelectLanguageScreen(),
                                    ));
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
}
