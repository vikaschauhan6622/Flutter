// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:speech_to_text/speech_to_text.dart' as stt;
//
//
//
// class Demo extends StatefulWidget {
//   const Demo({Key? key}) : super(key: key);
//
//   @override
//   _DemoState createState() => _DemoState();
// }
//
// class _DemoState extends State<Demo> {
//   late stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _textSpeech = 'Press';
//
//   void onListen() async {
//     if (!_isListening) {
//       var val;
//       bool available = await _speech.initialize(
//         onStatus: (status) => print('onStatus: $val'),
//         onError: (status) => print('onError: $val'),
//       );
//       if (available) {
//         setState(() {
//           _isListening = true;
//         });
//         _speech.listen(
//             onResult: (val) =>
//                 setState(() {
//                   _textSpeech = val.recognizedWords;
//                 })
//         );
//       }
//     } else {
//       setState(() {
//         _isListening = false;
//         _speech.stop();
//       });
//     }
//
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//             "Speech trial",
//           )),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: AvatarGlow(
//         animate: _isListening,
//         endRadius: 80,
//         glowColor: Theme
//             .of(context)
//             .primaryColor,
//         duration: Duration(microseconds: 2000),
//         repeatPauseDuration: Duration(microseconds: 100),
//         repeat: true,
//         child: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(_isListening ? Icons.mic : Icons.mic_none),
//         ),
//       ),
//       body: SingleChildScrollView(
//         reverse: true,
//         child: Container(
//           padding: EdgeInsets.fromLTRB(15, 15, 15, 150),
//           child: Text(
//             _textSpeech,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//           ),
//         ),
//       ),
//     );
//   }
// }

