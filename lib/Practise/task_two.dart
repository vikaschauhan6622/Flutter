import 'package:flutter/material.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({Key? key}) : super(key: key);

  @override
  _TaskTwoState createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MyApp')),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.blue,
                  child: Center(child: Text('Container 1')),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.red,
                  child: Center(child: Text('Container 2')),

                ),
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.amber,
                  child: Center(child: Text('Container 3')),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width ,
              color: Colors.pink,
              child: Center(child: Text('Container 1')),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width ,
              color: Colors.black45,
              child: Center(child: Text('Container 2')),
            ),
            Container(
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width ,
              color: Colors.cyan,
              child: Center(child: Text('Container 3')),
            ),

          ],
        ),
      ),
    ));
  }
}
