import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DemoShare extends StatefulWidget {
  const DemoShare({Key? key}) : super(key: key);

  @override
  _DemoShareState createState() => _DemoShareState();
}

class _DemoShareState extends State<DemoShare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            accountEmail: Text("vikaschauhan6622@gmail.com"),
            accountName: Text("Vikas Chauhan"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black45,
              // child: Image.asset("assets/images/sun.png"),
              child: Text("VC"),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text('Name'),
            leading: Icon(Icons.people, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text("Share with Friends"),
            onTap: () {
              Share.share('check out my website https://example.com',
                  subject: 'Look what I made!');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.flag,
              color: Colors.black,
            ),
            title: Text("Privacy Policy"),
            onTap: () {},
          ),
          ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.people, color: Colors.black),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
