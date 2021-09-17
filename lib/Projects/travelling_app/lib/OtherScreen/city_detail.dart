import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CityDetail extends StatefulWidget {
  final city;

  CityDetail(this.city);

  @override
  _CityDetailState createState() => _CityDetailState();
}

class _CityDetailState extends State<CityDetail> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  // void minus() {
  //   setState(() {
  //     if (_n != 0) _n--;
  //   });
  // }

  bool isPressed = false;
  bool onChange = false;
  ScrollController _scroll = ScrollController();
  late String image, name, rating;
  final List places = [
    {
      "image": "assets/images/SP1.jpg",
      "name": "Casino",
      "rating": "83 Reviews",
    },
    {
      "image": "assets/images/SP2.jpg",
      "name": "Library",
      "rating": "105 Reviews",
    },
    {
      "image": "assets/images/SP3.jpg",
      "name": "Metro Station",
      "rating": "120 Reviews",
    },
    {
      "image": "assets/images/SP4.jpg",
      "name": "Forest",
      "rating": "500 Reviews",
    },
    {
      "image": "assets/images/SP5.jpg",
      "name": "Casino",
      "rating": "200 Reviews",
    },
    {
      "image": "assets/images/SP6.jpg",
      "name": "Brideg",
      "rating": "150 Reviews",
    },
    {
      "image": "assets/images/SP7.jpg",
      "name": "Resturant",
      "rating": "830 Reviews",
    },
    {
      "image": "assets/images/SP8.jpg",
      "name": "Love Park",
      "rating": "1200 Reviews",
    },
    {
      "image": "assets/images/SP9.jpg",
      "name": "Railway Station",
      "rating": "83 Reviews",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  backgroundColor: Colors.grey,
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      background: Image.asset(
                        widget.city["image"],
                        fit: BoxFit.cover,
                      )),
                  leading: IconButton(
                    icon: Container(
                      child: CircleAvatar(
                          maxRadius: 12,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.black,
                          )),
                    ),
                    tooltip: 'Back',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: [
                    Container(
                      child: CircleAvatar(
                          maxRadius: 12,
                          backgroundColor: Colors.white70,
                          child: InkWell(
                            child: Icon(
                              isPressed
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: (isPressed)
                                  ? Color(0xFFEC0924)
                                  : Color(0xFF0C0101),
                            ),
                            onTap: () {
                              setState(() {
                                isPressed = true;
                              });
                            },
                          )),
                    ),
                  ]),
            ];
          },
          body: Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Container(
                            child: RatingBar.builder(
                          itemSize: 18,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.5),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )),
                        Text(
                          // "150 Reviews"
                          widget.city["review"],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.save_alt,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              onChange = true;
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => GoogleMaP(),
                            //   ),
                            // );
                          },
                          child: Icon(
                            onChange ? Icons.map : Icons.map,
                            color: onChange ? Colors.blue : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.more_horiz,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          widget.city["place1"],
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          widget.city["place2"],
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ListView.builder(
                      controller: _scroll,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  height: 50,
                                  width: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      places[index]["image"],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      places[index]["name"],
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            child: InkWell(
                                          // onTap: () {
                                          //   setState(() {
                                          //    add();
                                          //   });
                                          // },
                                          child: RatingBar.builder(
                                            itemSize: 15,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.5),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        )),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '$_n Reviews',
                                          // places[index]["rating"],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Divider()
                          ],
                        );
                      }),
                ],
              ),
            ),
          )),
    );
  }
}
