import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:flutter/material.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  _DownloadsScreenState createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  final List<String> businessList = [
    img_mybus_1,
    img_mybus_2,
    img_mybus_3,
    img_mybus_1,
    img_mybus_2,
    img_mybus_3,
    img_mybus_1,
  ];
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Downloads",
            style: TextStyle(
                fontSize: 16.0, color: blackColor, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    constraints: BoxConstraints.expand(height: 60),
                    child: TabBar(
                        unselectedLabelColor: blackColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [splashGradientOne, splashGradientTwo]),
                            borderRadius: BorderRadius.circular(50),
                            color: blackColor),
                        tabs: [
                          Tab(text: "DAILY"),
                          Tab(text: "FESTIVAL"),
                          Tab(text: "CUSTOM")
                        ]),
                  ),
                  Expanded(
                      child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(children: [
                      buildDailyList(context),
                      buildFestivalList(context),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Image.asset(
                                img_download_noresult,
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 2,
                              ),
                              Text(
                                "Download History Not Found",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: notFoundColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildDailyList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.33,
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        itemCount: businessList.length,
        controller: _controller,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                businessList[index],
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildFestivalList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.33,
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        itemCount: businessList.length,
        controller: _controller,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                businessList[index],
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          );
        },
      ),
    );
  }
}

// Container(
// height: MediaQuery.of(context).size.height/7.5,
// width: MediaQuery.of(context).size.width/3.5,
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.fill,
// image: AssetImage(img_mybus_1)),
// borderRadius:
// BorderRadius.all(Radius.circular(8.0)),
// ),
// child: Positioned(
// top: 10.0,
// right: 20,
// child: GestureDetector(
// onTap: (){
// },
// child: Icon(Icons.close, color: Colors.black,size: 20,),
// )),
// ),
