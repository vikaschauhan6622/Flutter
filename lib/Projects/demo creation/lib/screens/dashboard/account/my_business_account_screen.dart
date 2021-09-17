import 'dart:ui';

import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/account/add_brand_account_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBusinessAccountScreen extends StatefulWidget {
  @override
  _MyBusinessAccountScreenState createState() =>
      _MyBusinessAccountScreenState();
}

class _MyBusinessAccountScreenState extends State<MyBusinessAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                img_subscribe_bottom,
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 70,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.only(right: 20),
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
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 2.0,
                                spreadRadius: 0.6,
                                offset: Offset(0.0, 1))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "MY BUSINESS",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.separated(
                    itemCount: 1,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return buildCardList(context);
                    },
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                      right: 30,
                      bottom: 30,
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.18,
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: FloatingActionButton(
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.18,
                            width: MediaQuery.of(context).size.width * 0.18,
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(stops: [
                                  0.4,
                                  1
                                ], colors: [
                                  splashGradientTwo,
                                  splashGradientOne
                                ])),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return AddBrandAccountScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ],
    );
  }

  Card buildCardList(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: redColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: splashGradientTwo, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [splashGradientTwo, splashGradientOne]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Center(
                      child: Text(
                        "Company Name",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    // child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(20),
                    //     child: Image.asset(
                    //       img_mybus_1,
                    //       height:
                    //           MediaQuery.of(context).size.height /
                    //               8,
                    //       width:
                    //           MediaQuery.of(context).size.width / 4,
                    //     )),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Metronics",
                          style: TextStyle(
                              fontSize: 20,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Information Technology",
                          style: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                ic_location,
                                width: 20,
                                height: 20,
                                color: blackColor,
                              ),
                              Text("4'th Floor,Sunrise Avenue, Stadium",
                                  style: TextStyle(
                                      color: blackColor, fontSize: 12)),
                            ]),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 60),
                    alignment: Alignment.topRight,
                    child: Text(
                      "Edit",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 15, color: redColor),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Package not active in this business ,click On below to subscribe package',
                textAlign: TextAlign.center,
                style: TextStyle(color: blackColor, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.4, 1],
                    colors: [splashGradientTwo, splashGradientOne]),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0.0,
                ),
                onPressed: () {},
                child: Text(
                  'SUBSCRIBE NOW',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
