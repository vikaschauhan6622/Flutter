import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.access_time),
                  text: "Clock",
                ),
              ],
            ),
            title: Text('Tabs Demo'),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Text(
                formattedDate,
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
