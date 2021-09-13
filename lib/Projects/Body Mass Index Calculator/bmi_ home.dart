import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Body%20Mass%20Index%20Calculator/custom_button.dart';
import 'package:new_practise/Projects/Body%20Mass%20Index%20Calculator/custom_column.dart';
import 'package:new_practise/Projects/Body%20Mass%20Index%20Calculator/custom_container.dart';

enum g { m, f }

class BMIHome extends StatefulWidget {
  @override
  _BMIHomeState createState() => _BMIHomeState();
}

class _BMIHomeState extends State<BMIHome> {
  final activeColor = Colors.white10;
  final inactiveColor = Colors.white12;
  bool isSelected = false;
  int height = 160;
  int weight = 60;
  int age = 25;
  String bmi = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(12),
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        color: isSelected == g.m ? Colors.yellow : Colors.pink,
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text(
                            'FEMALE',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomContainer(
                        color: isSelected == g.f ? Colors.green : Colors.yellow,
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text(
                            'MALE',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  color: Colors.tealAccent,
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: CustomColumn(
                    text: 'HEIGHT $height cm',
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.green,
                        overlayColor: Color(0x2800ff00),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.floor();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                        child: CustomColumn(
                          text: 'WEIGHT $weight',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                onTap: () {
                                  setState(() {
                                    weight = weight - 1;
                                  });
                                },
                                icon: Icons.arrow_downward,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                onTap: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                },
                                icon: Icons.arrow_upward,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomContainer(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                        child: CustomColumn(
                          text: 'AGE $age',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                onTap: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                },
                                icon: Icons.arrow_downward,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                onTap: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                                icon: Icons.arrow_upward,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        onTap: () {
                          setState(() {
                            bmi = '';
                          });
                        },
                        width: double.infinity,
                        child: Text(
                          'CLEAR',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                        height: 50,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomContainer(
                        onTap: () {
                          double _bmi = weight / pow(height / 100, 2);

                          setState(() {
                            bmi = _bmi.toStringAsFixed(1);
                          });
                        },
                        width: double.infinity,
                        child: Text(
                          'GET BMI',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.green,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: CustomContainer(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'YOUR BMI IS',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bmi,
                          style: TextStyle(
                              fontSize: 100, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    color: Colors.grey,
                    height: 1,
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
