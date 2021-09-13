import 'package:flutter/material.dart';

class DemoDrawer extends StatefulWidget {
  const DemoDrawer({Key? key}) : super(key: key);

  @override
  _DemoDrawerState createState() => _DemoDrawerState();
}

class _DemoDrawerState extends State<DemoDrawer> {
  String name = "Vikas Chauhan";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: CircleAvatar(
                child: Container(
                    child: Text(name.substring(0, 1).toUpperCase(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)))),
            accountEmail: Text('dfdfdd@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
              // child: Text("KP"),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.home, size: 28, color: Colors.black),
          ),
          ListTile(
            title: Text(
              'Vegetarian',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.restaurant, size: 28, color: Colors.black),
          ),
          ListTile(
            title: Text(
              'Non-Vegetarian',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.restaurant_menu, size: 28, color: Colors.black),
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading:
                Icon(Icons.power_settings_new, size: 28, color: Colors.black),
          )
        ],
      ),
    );
  }
}
