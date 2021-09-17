import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/custom/custom_text_square_screen.dart';
import 'package:creato/screens/dashboard/custom/custome_image_square_screen.dart';
import 'package:creato/screens/dashboard/my_business_screen.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
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

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Custom",
          style: TextStyle(
              fontSize: 16.0, color: blackColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          img_mybus_1,
                          fit: BoxFit.fill,
                        ))),
              ),
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              bottomSheetMenuForImage(context);
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 6.5,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor,
                                      blurRadius: 10.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ]),
                              child: Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      ic_custome_image,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              10,
                                      width:
                                          MediaQuery.of(context).size.width / 7,
                                    ),
                                    Text(
                                      "TEXT & IMAGE",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              bottomSheetMenuForText(context);
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 6.5,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor,
                                      blurRadius: 10.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ]),
                              child: Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      ic_custome_text,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              10,
                                      width:
                                          MediaQuery.of(context).size.width / 7,
                                    ),
                                    Text(
                                      "ONLY TEXT",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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

  void bottomSheetMenuForImage(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.only(bottom: 70, right: 20, left: 20),
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
                height: 50,
              ),
              Text(
                "Select Size",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CustomImageSquareScreen();
                            },
                          ));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ]),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  img_square_select_image,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 6,
                                ),
                                Text(
                                  "SQUARE",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ]),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  img_square_select_image_poster,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 6,
                                ),
                                Text(
                                  "POSTER",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              //BusinessListPopup()
            ],
          ),
        );
      },
    );
  }

  void bottomSheetMenuForText(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.only(bottom: 70, right: 20, left: 20),
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
                height: 50,
              ),
              Text(
                "Select Size",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CustomTextSquareScreen();
                            },
                          ));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ]),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  ic_custome_text,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 6,
                                ),
                                Text(
                                  "SQUARE",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ]),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  ic_custome_text,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 6,
                                ),
                                Text(
                                  "POSTER",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              //BusinessListPopup()
            ],
          ),
        );
      },
    );
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
}
