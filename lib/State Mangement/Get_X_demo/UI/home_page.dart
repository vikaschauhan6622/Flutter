// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/snackbar/snack.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:new_practise/State%20Mangement/Get_X_demo/UI/contact_us.dart';
// import 'package:new_practise/State%20Mangement/Get_X_demo/controller/count.dart';
//
// import 'about_us.dart';
//
// class MyHomePage extends StatelessWidget {
//   final String title;
//   final MyHomePageController controller = Get.put(MyHomePageController());
//   MyHomePage({ required this.title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Obx(
//                   () => Text(
//                 '${controller.count.value}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             ),
//             FlatButton(
//                 onPressed: () {
//                   Get.off(AboutPage());
//                   /// of if You can also choose to replace the MyHomePage view with the AboutPage so
//                   /// the user won’t be able to navigate back to the previous page by hitting the
//                   /// device back button. This is useful for screens like login screens
//                   ///    Naviagtor.pop(); not work here because of this code only get a  context of next page
//                 },
//                 child: Text('About GetX')),
//             FlatButton(
//                 onPressed: () {
//                   Get.to(Contact_Us());
//                   /// we can nevigate and to another page and get back
//                   /// Here We implimentaion  Naviagtor.pop();
//                 },
//                 child: Text('Contact Us')),
//
//             FlatButton(
//                 onPressed: () {
//                   Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
//                       snackPosition: SnackPosition.TOP,
//                       backgroundColor: Colors.amberAccent);
//                 },
//                 child: Text('Show Snackbar')),
//             FlatButton(
//                 onPressed: () {
//                   Get.defaultDialog(
//                       title: 'GetX Alert',
//                       middleText: 'Simple GetX alert',
//                       textConfirm: 'Okay',
//                       confirmTextColor: Colors.amberAccent,
//                       textCancel: 'Cancel');
//                 },
//                 child: Text('Show AlertDialog'))
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: controller.increment,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
