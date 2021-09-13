import 'package:flutter/material.dart';
import 'package:new_practise/Login%20Pages/Login%20Page/login_page.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Reset Password",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.left,
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 12),
                          Column(children: [
                            TextFormField(
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.mail),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                hintText: "New Password",
                                prefixIcon: Icon(Icons.lock),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                prefixIcon: Icon(Icons.lock),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ));
                                    },
                                    style:
                                        ElevatedButton.styleFrom(elevation: 5),
                                    child: Text('Reset'))),
                          ])
                        ])))));
  }
}
