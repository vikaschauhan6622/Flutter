import 'package:flutter/material.dart';
import 'package:new_practise/Projects/Weather%20App/About%20Us.dart';
import 'package:new_practise/Projects/Weather%20App/Name.dart';
import 'package:new_practise/Projects/Weather%20App/Notification.dart';
import 'package:new_practise/Projects/Weather%20App/PrivacyPolicy.dart';
import 'package:new_practise/Projects/Weather%20App/detailedPage.dart';
import 'package:share/share.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var colors = [
    Colors.pink,
    Colors.orange,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
    Colors.brown,
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
    Colors.brown,
  ];

  late String time, name, degree, fahrenheit, weather;
  final List items = [
    {
      "time": "4:12",
      "image": "assets/images/cloud.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/sun1.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/weather.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/cloud.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/sun1.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/weather.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/cloud.png",
    },
    {
      "time": "4:12",
      "image": "assets/images/sun1.png",
    },
    {
      "city": "Surat",
      "time": "4:12",
      "image": "assets/images/weather.png",
      "degree": "35" + "\u2103",
      "fahrenheit": "95" + "\u2109",
      "weather": "Cloudy",
    },
    {
      "city": "Jaipur",
      "time": "4:12",
      "image": "assets/images/cloud.png",
      "degree": "25" + "\u2103",
      "fahrenheit": "68" + "\u2109",
      "weather": "Sunny",
    },
    {
      "city": "Agra",
      "time": "4:12",
      "image": "assets/images/sun1.png",
      "degree": "30" + "\u2103",
      "fahrenheit": "95" + "\u2109",
      "weather": "Sunny",
    },
    {
      "city": "Amritsar",
      "time": "4:12",
      "image": "assets/images/weather.png",
      "degree": "35" + "\u2103",
      "fahrenheit": "89.6" + "\u2109",
      "weather": "Cloudy",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                print(Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Not())));
              },
              child: Container(
                  child: Icon(
                Icons.notifications,
                size: 30,
              )),
            ),
          )
        ],
        title: Center(
            child: Text(
          "Weather",
        )),
      ),
      drawer: buildDrawer(context),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  // print('Index is ${items[index]}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailedPage(items[index]),
                    ),
                  );
                },
                child: Container(
                  color: colors[index],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              items[index]["image"],
                              alignment: Alignment(10, 10),
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    height: 2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                items[index]["title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    height: 2,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              //
                              Text(
                                items[index]["degree"],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Text(
                                items[index]["fahrenheit"],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "Current Weather:",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                              Text(
                                items[index]["weather"],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "UV:",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                              Text(
                                "Very Strong",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 4,
              ),
            ],
          );
        },
      ),
    ));
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
          ListTile(
            title: Text('Name'),
            leading: Icon(Icons.people, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Name(),
                  ));
            },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Not(),
                  ));
            },
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PP(),
                  ));
            },
          ),
          ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.people, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ab(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
