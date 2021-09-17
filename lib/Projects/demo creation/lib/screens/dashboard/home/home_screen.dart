import 'package:carousel_slider/carousel_slider.dart';
import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/my_business_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];
  int _currentIndex = 0;

  List<String> trendingList = <String>[
    "Christmas Day",
    "National Consumer Day",
    "New Year",
    "My Business",
    "Custom Day"
  ];

  final List<String> businessList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  final List<String> businessEthicsList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  final List<String> devotionalList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  final List<String> morningList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  final List<String> nightList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  final List<String> festivalList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  ];
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: ListTile(
          title: Text(
            "Your Business",
            style: TextStyle(
                color: greyColor, fontSize: 12, fontWeight: FontWeight.w600),
          ),
          subtitle: GestureDetector(
            onTap: () {
              bottomSheetView(context);
            },
            child: Row(
              children: [
                Text(
                  "Amar Infotech",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(15),
              child: Image.asset(
                ic_bell,
                width: 30,
                height: 30,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.0,
                      offset: Offset(0.0, 1))
                ],
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesList.map((urlOfItem) {
                  int index = imagesList.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color.fromRGBO(0, 0, 0, 0.8)
                          : Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: greyColor)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              trendingList[index],
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: greyColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildMyBusinessList(context),
              SizedBox(
                height: 30,
              ),
              buildBusinessEthicsList(context),
              SizedBox(
                height: 30,
              ),
              buildDevotionalList(context),
              SizedBox(
                height: 30,
              ),
              buildMorningList(context),
              SizedBox(
                height: 30,
              ),
              buildNightList(context),
              SizedBox(
                height: 30,
              ),
              buildFestivalList(context),
            ],
          ),
        ),
      ),
    ));
  }

  Container buildMyBusinessList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Business",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyBusinessScreen();
                    },
                  ));
                  print("tap");
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: redColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: businessList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      businessList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildBusinessEthicsList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Ethics",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 15.0,
                    color: redColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: businessEthicsList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      businessEthicsList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildDevotionalList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Devotional",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 15.0,
                    color: redColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: devotionalList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      devotionalList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildMorningList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 15.0,
                    color: redColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: morningList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      morningList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildNightList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Night",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 15.0,
                    color: redColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: morningList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      nightList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildFestivalList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Festival",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: redColor,
                        height: 5,
                        width: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: redColor,
                        height: 5,
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 15.0,
                    color: redColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: festivalList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      festivalList[index],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void bottomSheetView(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.only(bottom: 20, right: 24, left: 24, top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: greyColor,
                blurRadius: 10.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[200]),
                      child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Change Your Business",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      width: 30,
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: redColor),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      width: 5,
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: redColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 10, left: 10, right: 10, top: 10),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 50,
                                  margin: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      width: 50,
                                      height: 50,
                                      image: AssetImage(ic_profile),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add Your Business",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 2,
                          width: double.infinity,
                          color: Colors.grey[300],
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
