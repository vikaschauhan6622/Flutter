import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DemoNumberCounter extends StatefulWidget {
  const DemoNumberCounter({Key? key}) : super(key: key);

  @override
  _DemoNumberCounterState createState() => _DemoNumberCounterState();
}

class _DemoNumberCounterState extends State<DemoNumberCounter> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 250),
        child: Column(
          children: [
            Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new FloatingActionButton(
                    onPressed: add,
                    child: new Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  new Text('$_n', style: new TextStyle(fontSize: 60.0)),
                  new FloatingActionButton(
                    onPressed: minus,
                    child: new Icon(
                        const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                        color: Colors.black),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            RatingBarIndicator(rating: 1,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 50.0,
              direction: Axis.horizontal,
            ),
          ],
        ),
      ),
    );
  }
}