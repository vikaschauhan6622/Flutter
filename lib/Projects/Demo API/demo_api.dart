import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class DemoApi extends StatefulWidget {
  DemoApi({Key? key}) : super(key: key);

  @override
  _DemoApiState createState() => _DemoApiState();
}

class _DemoApiState extends State<DemoApi> {
  List<dynamic> notificationList = [];
  final ctrl = TextEditingController();
  ScrollController _controller1 = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text("Post Office Locator"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  ListView.builder(
                    controller: _controller1,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: notificationList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white38,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Name Of Branch :',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  notificationList[index]['Name'],
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Type Of Branch :',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  notificationList[index]['BranchType'],
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'City:',
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  notificationList[index]['District'],
                                  style: TextStyle(color: Colors.green),
                                ),
                                Text(
                                  notificationList[index]['State'],
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  notificationList[index]['Country'],
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: ctrl,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 24,
                        ),
                        hintText: "Enter Pin Code",
                        labelText: "Enter Pin Code",
                        hintStyle: TextStyle(color: Colors.black),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    // TextField(
                    //   controller: ctrl,
                    //   // keyboardType: TextInputType.number,
                    //   decoration: InputDecoration(
                    //       border: InputBorder.none,
                    //       labelText: 'Enter Name',
                    //       hintText: 'Enter Your Name'),
                    // ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          onNotificationLoad();
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          color: Colors.green,
                          child: Text('submit'))),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
          // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }

  onNotificationLoad() async {
    //  SharedPreferences prefs = await SharedPreferences.getInstance();

    {
      var response = await https.get(
          Uri.parse('http://www.postalpincode.in/api/pincode/' + ctrl.text),
          // Uri.parse('https://api.postalpincode.in/postoffice/' + ctrl.text),
          headers: {
            'Accept': 'application/json',
          });
      print(response);
      if (response.statusCode == 200) {
        print('Status code200 ');
        final decode = jsonDecode(response.body);
        print(decode.toString());
        if (decode['Status'] == 'Success') {
          print(decode.toString());
          print("Get Data:");
          print("Get Data:" + decode['PostOffice'].toString());
          notificationList.clear();
          for (int i = 0; i < decode['PostOffice'].length; i++) {
            setState(() {
              notificationList.add(decode['PostOffice'][i]);
              print('list length is --------->${decode['PostOffice'][i]}');
            });
          }
        } else {
          print(decode.toString());
        }

        return;
      }
    }
  }
}
