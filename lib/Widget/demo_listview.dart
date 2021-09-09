import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoList extends StatefulWidget {
  const DemoList({Key? key}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  get post => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: ListView.builder(
          // itemCount: post.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [ post[index]['qutoes'],],
            );
          }),
    )));
  }
}
