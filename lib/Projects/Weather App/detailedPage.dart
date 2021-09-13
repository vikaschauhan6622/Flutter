import 'package:flutter/material.dart';

class DetailedPage extends StatefulWidget {
  final item;

  DetailedPage(this.item);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        widget.item["image"],
                        alignment: Alignment(10, 10),
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.item["city"],
                          style: TextStyle(
                              height: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          widget.item["time"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              height: 2,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        //
                        Text(
                          widget.item["degree"],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        Text(
                          widget.item["fahrenheit"],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "Current Weather:",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        Text(
                          widget.item["weather"],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "UV:",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        Text(
                          "Very Strong",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
