import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:flutter/material.dart';

class MyBusinessScreen extends StatefulWidget {
  const MyBusinessScreen({Key? key}) : super(key: key);

  @override
  _MyBusinessScreenState createState() => _MyBusinessScreenState();
}

class _MyBusinessScreenState extends State<MyBusinessScreen> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
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
                "MY BUSINESS",
                style: TextStyle(
                    fontSize: 16.0,
                    color: blackColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              ic_language,
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
                    offset: Offset(0.0, 1))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                ic_downloads,
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
                      offset: Offset(0.0, 1))
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
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
              Container(
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
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
