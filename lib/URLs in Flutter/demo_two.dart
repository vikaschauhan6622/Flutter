import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

_launchURLBrowser() async {
  const url = 'https://www.geeksforgeeks.org/flutter-tutorial/#Widgets';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  const url = 'https://www.geeksforgeeks.org/flutter-tutorial/#Widgets';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('URL Button'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                Text(
                  'URL Button',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: _launchURLBrowser,
                  child: Text('Open in Browser'),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: _launchURLApp,
                  child: Text('Open in App'),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
