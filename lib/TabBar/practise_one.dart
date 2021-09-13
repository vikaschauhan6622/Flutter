import 'package:flutter/material.dart';

class DemoTabBar extends StatefulWidget {
  const DemoTabBar({Key? key}) : super(key: key);

  @override
  _DemoTabBarState createState() => _DemoTabBarState();
}

class _DemoTabBarState extends State<DemoTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.music_video)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.grade)),
              Tab(icon: Icon(Icons.email)),
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
          title: Center(child: Text('MyApp')),
          backgroundColor: Colors.green,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.music_note,color: Colors.red,size: 100,),
            Icon(Icons.music_video,color: Colors.red,size: 100),
            Icon(Icons.camera_alt,color: Colors.red,size: 100),
            Icon(Icons.grade,color: Colors.red,size: 100),
            Icon(Icons.email,color: Colors.red,size: 100),
            Icon(Icons.account_circle,color: Colors.red,size: 100),
            Icon(Icons.menu,color: Colors.red,size: 100)

          ],
        ),
      ),
    );
  }
}
