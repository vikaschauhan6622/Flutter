import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';

class DemoAutoTextFeild extends StatefulWidget {
  DemoAutoTextFeild({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _DemoAutoTextFeildState createState() => _DemoAutoTextFeildState();
}

class _DemoAutoTextFeildState extends State<DemoAutoTextFeild> {
  TextEditingController? _textEditingControllerOne;
  TextEditingController? _textEditingControllerTwo;
  TextEditingController? _textEditingControllerThree;
  TextEditingController? _textEditingControllerFour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 48),
              Text(
                'Fixed width (full width of parent\'s BoxConstraints)',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AutoSizeTextField(
                  controller: _textEditingControllerOne,
                  minFontSize: 24,
                  style: TextStyle(fontSize: 64),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                'Auto adjusted width based on contents',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AutoSizeTextField(
                  textAlign: TextAlign.center,
                  fullwidth: false,
                  controller: _textEditingControllerTwo,
                  minFontSize: 24,
                  style: TextStyle(fontSize: 64),
                ),
              ),
              SizedBox(height: 48),
              Text('Auto adjusted width with hintText and minWidth'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AutoSizeTextField(
                  controller: _textEditingControllerThree,
                  decoration: InputDecoration(hintText: 'Hint Text'),
                  fullwidth: false,
                  minFontSize: 24,
                  minWidth: 280,
                  style: TextStyle(fontSize: 64),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 48),
              Text('Auto adjusted width with prefix and suffix text'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AutoSizeTextField(
                  minWidth: 100,
                  controller: _textEditingControllerFour,
                  decoration: InputDecoration(
                    prefixText: '\$',
                    suffixText: '😁',
                  ),
                  fullwidth: false,
                  minFontSize: 24,
                  style: TextStyle(fontSize: 64),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formattig nicer for build methods.
    );
  }

  @override
  void initState() {
    super.initState();

    _textEditingControllerOne = TextEditingController();
    _textEditingControllerTwo = TextEditingController();
    _textEditingControllerThree = TextEditingController();
    _textEditingControllerFour = TextEditingController();
  }
}
