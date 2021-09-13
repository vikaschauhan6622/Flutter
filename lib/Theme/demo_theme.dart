import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.green,

        // Define the default font family.
        fontFamily: 'Monotype Coursiva',

        // Define the TextTheme that specifies the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
            headline: TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic, fontFamily: 'Hind')
        ),
      ),
      home: MyThemePage(),
    );
  }
}

class MyThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Example'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Themes contains the graphical appearances that makes the user interface more attractive.',
            style: Theme.of(context).textTheme.headline,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.blue),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}