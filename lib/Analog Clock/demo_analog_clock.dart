import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class DemoAnalog extends StatefulWidget {
  @override
  _DemoAnalogState createState() => _DemoAnalogState();
}

class _DemoAnalogState extends State<DemoAnalog> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: AnalogClock(
              showAllNumbers: true,
              secondHandColor: Colors.red,
              height: 300,
              isLive: true,
              hourHandColor: Colors.white,
              minuteHandColor: Colors.white,
              showSecondHand: true,
              numberColor: Colors.white,
              showNumbers: true,
              textScaleFactor: 1.5,
              showTicks: true,
              showDigitalClock: true,
              digitalClockColor: Colors.white,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.red,
                  ),
                  color: Colors.black,
                  shape: BoxShape.circle),
              datetime: DateTime(2021, 8, 4, 9, 11, 0),
            ),
          ),
        ),
      );
}
