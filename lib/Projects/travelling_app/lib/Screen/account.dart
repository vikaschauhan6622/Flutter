import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/Logics/logic_signin.dart';
import 'package:travelling_app/auth/login_sign_up.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 290, top: 20),
              child: Icon(Icons.edit)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star_border),
                    SizedBox(
                      width: 15,
                    ),
                    Text("My Reviews"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text("My Routes"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Notifications"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Icon(Icons.message),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Contact Us"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Divider(),
                ),
                InkWell(
                  onTap: () {
                    signOutGoogle();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) {
                      return Login_Signup();
                    }), ModalRoute.withName('/'));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Log out"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Divider(),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
