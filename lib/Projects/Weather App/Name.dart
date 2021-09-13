import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name"),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          ListTile(
            // selected: true,
            leading: CircleAvatar(
              child: Text("1"),
            ),
            title: Text("Goa"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("2"),
            ),
            title: Text("Delhi"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("3"),
            ),
            title: Text("Mumbai"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("4"),
            ),
            title: Text("Rajkot"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("5"),
            ),
            title: Text("Ahmedabad"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("6"),
            ),
            title: Text("Gwalior"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("7"),
            ),
            title: Text("Chennai"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("8"),
            ),
            title: Text("Pune"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("9"),
            ),
            title: Text("Surat"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("10"),
            ),
            title: Text("Jaipur"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("11"),
            ),
            title: Text("Agra"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("12"),
            ),
            title: Text("Amritsar"),
            subtitle: Text("Click Here to See Current City Weather"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
