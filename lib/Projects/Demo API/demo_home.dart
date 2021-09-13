// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as https;
// import 'package:new_practise/Projects/Demo%20API/demo_api.dart';
//
// class DemoHomeAPI extends StatefulWidget {
//   const DemoHomeAPI({Key? key}) : super(key: key);
//
//   @override
//   _DemoHomeAPIState createState() => _DemoHomeAPIState();
// }
//
// class _DemoHomeAPIState extends State<DemoHomeAPI> {
//   List<dynamic> notificationList = [];
//
//   final ctrl = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 20, left: 20, right: 20),
//             child: TextFormField(
//               keyboardType: TextInputType.number,
//               controller: ctrl,
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 prefixIcon: Icon(
//                   Icons.search,
//                   color: Colors.black,
//                   size: 24,
//                 ),
//                 hintText: "Enter Pin Code",
//                 labelText: "Enter Pin Code",
//                 hintStyle: TextStyle(color: Colors.black),
//                 focusColor: Colors.black,
//                 fillColor: Colors.black,
//                 enabledBorder:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 focusedBorder:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           InkWell(
//               onTap: () {
//                 setState(() {
//                   onNotificationLoad();
//                 });
//               },
//               child: Container(
//                   alignment: Alignment.center,
//                   height: 50,
//                   width: 100,
//                   color: Colors.green,
//                   child: InkWell(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => DemoApi(),));
//                         // setState(() {
//                         //   DemoApi();
//                         // });
//                       },
//                       child: Text('submit')))),
//           SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     ));
//   }
//
//   onNotificationLoad() async {
//     //  SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     {
//       var response = await https.get(
//           Uri.parse('http://www.postalpincode.in/api/pincode/' + ctrl.text),
//           // Uri.parse('https://api.postalpincode.in/postoffice/' + ctrl.text),
//           headers: {
//             'Accept': 'application/json',
//           });
//       print(response);
//       if (response.statusCode == 200) {
//         print('Status code200 ');
//         final decode = jsonDecode(response.body);
//         print(decode.toString());
//         if (decode['Status'] == 'Success') {
//           print(decode.toString());
//           print("Get Data:");
//           print("Get Data:" + decode['PostOffice'].toString());
//           notificationList.clear();
//           for (int i = 0; i < decode['PostOffice'].length; i++) {
//             setState(() {
//               notificationList.add(decode['PostOffice'][i]);
//               print('list length is --------->${decode['PostOffice'][i]}');
//             });
//           }
//         } else {
//           print(decode.toString());
//         }
//
//         return;
//       }
//     }
//   }
// }
