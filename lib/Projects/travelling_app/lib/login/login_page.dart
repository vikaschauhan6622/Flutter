// import 'package:flutter/material.dart';
// import 'package:travelling_app/login/firstpage.dart';
// import 'package:travelling_app/login/logic_signin.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           child: Column(
//             children: <Widget>[
//               _signInButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _signInButton() {
//     return OutlineButton(
//       onPressed: () {
//         signInWithGoogle().then((result) {
//           if (result != null) {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) {
//                   return FirstScreen();
//                 },
//               ),
//             );
//           }
//         });
//       },
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//       highlightElevation: 0,
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             //Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Text(
//                 'Sign in with Google',
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
