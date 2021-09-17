import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMaP extends StatefulWidget {
  @override
  _GoogleMaPState createState() => _GoogleMaPState();
}

class _GoogleMaPState extends State<GoogleMaP> {
  var currentLocation = LocationData;

  var location = new Location();

  LatLng? currentPostion;

  void _getUserLocation() async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition();
    setState(() {
      currentPostion = LatLng(position.latitude, position.longitude);
    });
  }

  // LatLng? _center;

  // Position? currentLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition();
  }

  // getUserLocation() async {
  //   currentLocation = await locateUser();
  //   setState(() {
  //     _center = LatLng(currentLocation!.latitude, currentLocation!.longitude);
  //   });
  //   print('center $_center');
  // }

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _myLocation = CameraPosition(
    target: LatLng(0, 0),
  );
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr as Completer<GoogleMapController>;
    _location.onLocationChanged.listen((l) {
      _controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: GoogleMap(
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      scrollGesturesEnabled: true,
      compassEnabled: true,
      rotateGesturesEnabled: true,
      gestureRecognizers: Set()
        ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer())),
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(00, 00),
        zoom: 14.4746,
      ),
      // onMapCreated: _initMarkers,
      // markers: _marker.toSet()),
      // child: GoogleMap(
      //   onMapCreated: _onMapCreated,
      //   initialCameraPosition: CameraPosition(
      //     target: LatLng(00,00),
      //     // target: currentLocation,
      //     zoom: 10,
      //   ),
      // ),
      //   ),
      // ),
    ))));
  }
}

// class AppConstant {
//   static List<Map<String, dynamic>> list = [
//     {"title": "one", "id": "1", "lat": 23.7985053, "lon": 90.3842538},
//     {"title": "two", "id": "2", "lat": 23.802236, "lon": 90.3700},
//     {"title": "three", "id": "3", "lat": 23.8061939, "lon": 90.3771193},
//   ];
// }
