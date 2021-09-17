import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelling_app/OtherScreen/city_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  ScrollController _scroll = ScrollController();
  bool isPressed = false;
  late String image, place1, place2, review;
  final List city = [
    {
      "image": "assets/images/p01.jpg",
      "place1": "Amsterdam,",
      "place2": "Netherlands",
      "review": '150 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p02.jpg",
      "place1": "Barcelona,",
      "place2": "Spain",
      "review": '250 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p03.jpg",
      "place1": "Beirut,",
      "place2": "Lebanon",
      "review": '200 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p04.jpg",
      "place1": "Bergen,",
      "place2": "Norway",
      "review": '350 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p05.jpg",
      "place1": "Bruges,",
      "place2": "Belgium",
      "review": '450 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p06.jpg",
      "place1": "Budapest,",
      "place2": "Hungary",
      "review": '120 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p01.jpg",
      "place1": "Amsterdam,",
      "place2": "Netherlands",
      "review": '550 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p02.jpg",
      "place1": "Barcelona,",
      "place2": "Spain",
      "review": '150 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p03.jpg",
      "place1": "Beirut,",
      "place2": "Lebanon",
      "review": '450 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p04.jpg",
      "place1": "Bergen,",
      "place2": "Norway",
      "review": '750 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p05.jpg",
      "place1": "Bruges,",
      "place2": "Belgium",
      "review": '650 Reviews',
      "change": false,
    },
    {
      "image": "assets/images/p06.jpg",
      "place1": "Budapest,",
      "place2": "Hungary",
      "review": '950 Reviews',
      "change": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8, right: 5, left: 5),
              child: TextFormField(
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
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.black,
                    size: 24,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black),
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 8, right: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Favorite travel destinations",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5, right: 5),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                controller: _scroll,
                shrinkWrap: true,
                itemCount: city.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      //   setState(() {
                      //     if (isSaved) {
                      //       savedcity.remove(citys);
                      //     } else {
                      //       savedcity.add(citys);
                      //     }
                      //   });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityDetail(city[index]),
                        ),
                      );
                    },
                    child: Container(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              city[index]["image"],
                            ),
                          ),
                          Positioned(
                              left: 120,
                              top: 10,
                              child: Container(
                                child: CircleAvatar(
                                  maxRadius: 12,
                                  backgroundColor: Colors.white70,
                                  child: InkWell(
                                      child: Icon(
                                        city[index]["change"] == true
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: (city[index]["change"])
                                            ? Color(0xFFEC0924)
                                            : Color(0xFF0C0101),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          city[index]["change"] = true;
                                        });
                                      }),
                                ),
                              )),
                          Positioned(
                            bottom: 45,
                            left: 5,
                            child: Column(
                              children: [
                                Text(
                                  city[index]["place1"],
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 15,
                            child: Column(
                              children: [
                                Text(
                                  city[index]["place2"],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            left: 60,
                            child: Column(
                              children: [
                                Container(
                                    child: RatingBar.builder(
                                  itemSize: 12,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.5),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                )),
                                Text(
                                  '$_n Reviews',
                                  // city[index]["review"],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
