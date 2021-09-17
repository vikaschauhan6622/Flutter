import 'package:creato/commons/my_color_picker.dart';
import 'package:flutter/material.dart';

class DemoAbc extends StatefulWidget {
  @override
  _DemoAbcState createState() => _DemoAbcState();
}

class _DemoAbcState extends State<DemoAbc> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: _color,
          ),
          SizedBox(height: 30),
          MyColorPicker(
              onSelectColor: (value) {
                setState(() {
                  _color = value;
                });
              },
              availableColors: [
                Colors.blue,
                Colors.green,
                Colors.greenAccent,
                Colors.yellow,
                Colors.orange,
                Colors.red,
                Colors.purple,
                Colors.grey,
                Colors.deepOrange,
                Colors.teal
              ],
              initialColor: Colors.blue)
        ],
      ),
    );
  }
}
