import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HelloConvexAppBar extends StatefulWidget {
  @override
  _HelloConvexAppBarState createState() => _HelloConvexAppBarState();
}

class _HelloConvexAppBarState extends State<HelloConvexAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.red,
        style: TabStyle.react,
        backgroundColor: Colors.green,
        items: [
          TabItem(icon: Icons.play_arrow),
          TabItem(icon: Icons.museum),
          TabItem(icon: Icons.book),
        ],
        initialActiveIndex: 1 /*optional*/,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
