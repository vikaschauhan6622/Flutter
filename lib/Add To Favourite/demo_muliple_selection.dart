import 'dart:developer';

import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  _SelectLanguageScreenState createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  List<Language> languageList = <Language>[
    Language("One"),
    Language("Two"),
    Language("Three"),
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
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: languageList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
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
                                    // stops: [0.4, 1],
                                    colors: (languageList[index].selected)
                                        ? [Colors.red, Colors.red]
                                        : [Colors.green, Colors.green]),
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
                                      color: Colors.white,
                                    ),
                                  ),
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
                          stops: [0.4, 1], colors: [Colors.red, Colors.blue]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: Size(double.infinity, 55),
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SelectLanguageScreen();
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
