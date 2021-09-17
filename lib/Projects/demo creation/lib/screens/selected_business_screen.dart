import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SelectedBusinessTypeScreen extends StatefulWidget {
  const SelectedBusinessTypeScreen({Key? key}) : super(key: key);

  @override
  _SelectedBusinessTypeScreenState createState() =>
      _SelectedBusinessTypeScreenState();
}

class _SelectedBusinessTypeScreenState
    extends State<SelectedBusinessTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [splashGradientOne, splashGradientTwo])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(img_bg_business_cat, height: 200, fit: BoxFit.cover)
            ],
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 64,
              title: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          ic_backarrow,
                          width: 35,
                          height: 35,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 2.0,
                                spreadRadius: 0.6,
                                offset: Offset(0.0, 1))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Select your business type",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Container(
              //height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        margin: EdgeInsets.only(left: 25, right: 25),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 17),
                                  // prefix: Icon(Icons.search),
                                  hintText: 'SEARCH',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12, right: 12),
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                bottom: 16, left: 10, right: 10),
                            //alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.white, Colors.white]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                // setState(() {
                                //   business_list[index].isSelected =
                                //   !business_list[index].isSelected;
                                // });
                              },
                              child: Row(
                                /*crossAxisAlignment:
                                          CrossAxisAlignment.start,*/
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    /*decoration:BoxDecoration(
                                            image: DecorationImage(image: Image.network(business_list[index].image)

                                            )


                                    )*/
                                    padding: EdgeInsets.all(5),
                                    height: 50,
                                    width: 50,
                                    child: Image.network(
                                      'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    // color: Colors.blueAccent,

                                    child: Text(
                                      'Information Technology',
                                      style: TextStyle(fontSize: 17),

                                      //   style: TextStyle(
                                      //       color: business_list[index].isSelected
                                      //           ? Colors.white
                                      //           : Colors.black),
                                      //
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                builder: (context) {
                                                  return BottomNavigationScreen();
                                                },
                                              ));
                                              // navigatePage(
                                              //     DashBoardScreen(), context,
                                              //     isReplace: true);
                                              //
                                              // authBusinessCatId =
                                              //     business_list[index]
                                              //         .id
                                              //         .toString();
                                              // setPrefString(
                                              //     keyBusinessCategoryListId,
                                              //     business_list[index]
                                              //         .id
                                              //         .toString());
                                              // authbusinessCatName =
                                              //     business_list[index]
                                              //         .name
                                              //         .toString();
                                              // setPrefString(
                                              //     keyBusinessCategoryName,
                                              //     business_list[index].name);
                                              //
                                              // print(
                                              //     ' Id is -->$authBusinessCatId  & Name is --> $authbusinessCatName ');
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 5.0,
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        splashGradientOne,
                                                        splashGradientTwo
                                                      ])),
                                              child: Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        )),
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
            ),
          ),
        ),
      ],
    );
  }
}
