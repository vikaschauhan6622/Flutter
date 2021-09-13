import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  const Not({Key? key}) : super(key: key);

  @override
  _StateWsieState createState() => _StateWsieState();
}

class _StateWsieState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Notification")),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          ListTile(
            // selected: true,
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("25" + "\u2103" + " in Andhra Pradesh"),
            subtitle: Text(
              "2" + "\u2103" + " colder than today",
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in Chennai"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Rajkot"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in Ahmedabad"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Jaipur"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("25" + "\u2103" + " in Kota"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in Agra"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Puri"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("25" + "\u2103" + " in Arunachal Pardesh"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in Surat"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Goa"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("25" + "\u2103" + " in Chandigarh"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in "),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Rajkot"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("30" + "\u2103" + " in Ahmedabad"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("35" + "\u2103" + " in Andhra Pradesh"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.notifications),
            ),
            title: Text("25" + "\u2103" + " in Heydrabad"),
            subtitle: Text("2" + "\u2103" + " colder than today",
                style: TextStyle(fontSize: 12)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
