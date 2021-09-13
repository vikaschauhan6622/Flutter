// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class GoogleMaP extends StatefulWidget {
//   @override
//   _GoogleMaPState createState() => _GoogleMaPState();
// }
//
// class _GoogleMaPState extends State<GoogleMaP> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   // Iterable markers = [];
//   //
//   // Iterable _markers = Iterable.generate(AppConstant.list.length, (index) {
//   //   return Marker(
//   //       markerId: MarkerId(AppConstant.list[index]['id']),
//   //       position: LatLng(
//   //         AppConstant.list[index]['lat'],
//   //         AppConstant.list[index]['lon'],
//   //       ),
//   //       infoWindow: InfoWindow(title: AppConstant.list[index]["title"])
//   //   );
//   // });
//   @override
//   void initState() {
//     // setState(() {
//     //   markers = _markers;
//     // });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // height: MediaQuery.of(context).size.height/2,
//         child: GoogleMap(
//           mapType: MapType.normal,
//           mapToolbarEnabled: true,
//           myLocationButtonEnabled: true,
//           initialCameraPosition:
//               CameraPosition(target: LatLng(23.0225, 72.5714), zoom: 13),
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//           // markers: Set.from(markers),
//         ),
//       ),
//     );
//   }
// }
//
// class AppConstant {
//   static List<Map<String, dynamic>> list = [
//     {"title": "one", "id": "1", "lat": 23.7985053, "lon": 90.3842538},
//     {"title": "two", "id": "2", "lat": 23.802236, "lon": 90.3700},
//     {"title": "three", "id": "3", "lat": 23.8061939, "lon": 90.3771193},
//   ];
// }
