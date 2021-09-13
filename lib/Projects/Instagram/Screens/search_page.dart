import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              margin: EdgeInsets.all(20),
              child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)))),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/1.jpg",
                  width: MediaQuery.of(context).size.width / 3.5,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  "assets/images/3.jpg",
                  width: MediaQuery.of(context).size.width / 3.5,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  "assets/images/5.jpg",
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/1.jpg",
                  width: MediaQuery.of(context).size.width / 3.5,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  "assets/images/3.jpg",
                  width: MediaQuery.of(context).size.width / 3.5,
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  "assets/images/5.jpg",
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
