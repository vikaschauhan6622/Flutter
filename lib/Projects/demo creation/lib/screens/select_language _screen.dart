import 'dart:developer';

import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/selected_business_screen.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  _SelectLanguageScreenState createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  List<Language> languageList = <Language>[
    Language("ENGLISH"),
    Language("HINDI"),
    Language("GUJARATI"),
  ];
  bool selectingmode = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Preferred Languages",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Choose all  the Language in which  you want  to \n get image ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  img_language,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: languageList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectingmode) {
                                  languageList[index].selected =
                                      !languageList[index].selected;
                                  log(languageList[index].selected.toString());
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 10),
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    stops: [0.4, 1],
                                    colors: (languageList[index].selected)
                                        ? [splashGradientTwo, splashGradientOne]
                                        : [whiteColor, whiteColor]),
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    languageList[index].language,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      height: 1.6,
                                      color: (languageList[index].selected)
                                          ? whiteColor
                                          : blackColor,
                                    ),
                                  ),
                                  Image.asset(
                                    (languageList[index].selected)
                                        ? ic_circle_tick
                                        : ic_circle,
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.4, 1],
                          colors: [splashGradientTwo, splashGradientOne]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(double.infinity, 55),
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SelectedBusinessTypeScreen();
                          },
                        ));
                      },
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Language {
  final String language;
  bool selected = false;

  Language(this.language);
}
