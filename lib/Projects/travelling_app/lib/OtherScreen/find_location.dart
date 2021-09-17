import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/bottom_nav_bar.dart';

class FindLocation extends StatefulWidget {
  const FindLocation({Key? key}) : super(key: key);

  @override
  _FindLocationState createState() => _FindLocationState();
}

class _FindLocationState extends State<FindLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Stack(
        children: [
          Container(
              child: Image.asset(
            "assets/images/r1.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
          Positioned(
              top: 15,
              left: 15,
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))
                ],
              )),
          Positioned(
              top: 150,
              left: 10,
              child: Column(
                children: [
                  Text(
                    "Where",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(8.0, 8.0),
                          blurRadius: 4.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        Shadow(
                          offset: Offset(8.0, 8.0),
                          blurRadius: 8.0,
                          color: Color.fromARGB(100, 0, 0, 100),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 173,
              left: 10,
              child: Column(
                children: [
                  Text(
                    "are we going?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(8.0, 8.0),
                          blurRadius: 4.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        Shadow(
                          offset: Offset(8.0, 8.0),
                          blurRadius: 8.0,
                          color: Color.fromARGB(100, 0, 0, 100),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Positioned(
            bottom: 290,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 20,
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.2,
              child: MaterialButton(
                height: 60,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
                      ));
                },
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(18)),
                child: Text(
                  "LETS HIT THE ROAD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0),
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.blueAccent,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 15,
              left: 170,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(),
                        ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white),
                  ))),
        ],
      ),
    ));
  }
}
