import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:travelling_app/Logics/logic_push_button.dart';

class Favourite extends StatefulWidget {
  const Favourite({
    Key? key,
  }) : super(key: key);

  // final String title;

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: MaterialButton(
          height: 60,
          onPressed: showNotification,
          color: Colors.blueAccent,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.blueAccent,
              ),
              borderRadius: BorderRadius.circular(18)),
          child: Text(
            "Get Notification",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    ));
  }

  void showNotification() {
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        0,
        "Vikas Send Message..Click to read Message $_counter",
        "Hi...How are you ?",
        NotificationDetails(
            android: AndroidNotificationDetails(
                channel.id, channel.name, channel.description,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }
}
