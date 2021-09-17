import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:flutter/material.dart';

class FrameSelectedBrandAccount extends StatefulWidget {
  const FrameSelectedBrandAccount({Key? key}) : super(key: key);

  @override
  _FrameSelectedBrandAccountState createState() =>
      _FrameSelectedBrandAccountState();
}

class _FrameSelectedBrandAccountState extends State<FrameSelectedBrandAccount> {
  @override
  List selectedIndexList = [
    img_frame1,
    img_frame2,
    img_frame3,
    img_frame4,
    img_frame5,
    img_frame6
  ];

  Widget build(BuildContext context) {
    return Form(
      // key: _scaffoldKey,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [splashGradientTwo, splashGradientOne],
          ),
        ),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                toolbarHeight: 70,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      child: Text(
                        "Finish",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Metronics',
                        style: TextStyle(color: whiteColor, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * .40,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                  ),
                                  // child: logoImage != null
                                  //     ? Image.file(
                                  //   logoImage!,
                                  //   width: MediaQuery.of(context)
                                  //       .size
                                  //       .width /
                                  //       9,
                                  //   height: MediaQuery.of(context)
                                  //       .size
                                  //       .width /
                                  //       9,
                                  //   fit: BoxFit.cover,
                                  // )
                                  //     :
                                  child: Container(
                                      child: Text(
                                    'Logo ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      img_left_alignment,
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      img_top_alignment,
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      img_right_alignment,
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, right: 8),
                                  // child: profileImage != null
                                  //     ? Image.file(
                                  //   profileImage!,
                                  //   width: MediaQuery.of(context)
                                  //       .size
                                  //       .width /
                                  //       9,
                                  //   height: MediaQuery.of(context)
                                  //       .size
                                  //       .width /
                                  //       9,
                                  //   fit: BoxFit.cover,
                                  // )
                                  //     :
                                  child: Container(
                                      child: Text(
                                    'Images ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            Image.asset(
                              img_add_image,
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 2,
                              fit: BoxFit.fill,
                            ),
                            Spacer(),
                            Container(
                                child: Text(
                              "91021565125",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'We Recommend For You',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'You can select up to 5 Design',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        child: GridView.builder(
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          scrollDirection: Axis.vertical,
                          itemCount: selectedIndexList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      if (!selectedIndexList.contains(index)) {
                                        selectedIndexList.add(index);
                                      } else {
                                        selectedIndexList.remove(index);
                                      }
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(17.0),
                                        boxShadow: <BoxShadow>[],
                                      ),
                                      child: Stack(
                                        children: [
                                          Image.asset(selectedIndexList[index]),
                                          Container(
                                            margin: EdgeInsets.all(10),
                                            padding: EdgeInsets.all(10),
                                            child: TextButton(
                                              onPressed: () {
                                                if (!selectedIndexList
                                                    .contains(index)) {
                                                  selectedIndexList.add(index);
                                                  //print(selectedIndexList[index]);
                                                } else {
                                                  selectedIndexList
                                                      .remove(index);
                                                }
                                                setState(() {});
                                              },
                                              child: selectedIndexList
                                                      .contains(index)
                                                  ? Container(
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          // BoxShape.circle or BoxShape.retangle
                                                          //color: const Color(0xFF66BB6A),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: Colors
                                                                    .orange,
                                                                blurRadius: 20),
                                                          ]),
                                                      child: Icon(Icons.check,
                                                          color: Colors.blue,
                                                          size: 25),
                                                    )
                                                  : Text(''),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
