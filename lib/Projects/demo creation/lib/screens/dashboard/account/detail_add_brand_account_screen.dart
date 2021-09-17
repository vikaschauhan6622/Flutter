import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/account/frame_selected_brand_account_screen.dart';
import 'package:flutter/material.dart';

class DetailAddBrandAccountScreen extends StatefulWidget {
  const DetailAddBrandAccountScreen({Key? key}) : super(key: key);

  @override
  _DetailAddBrandAccountScreenState createState() =>
      _DetailAddBrandAccountScreenState();
}

class _DetailAddBrandAccountScreenState
    extends State<DetailAddBrandAccountScreen> {
  @override
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
                        'Business Name',
                        style: TextStyle(color: whiteColor, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We will make footer design according your details',
                        style: TextStyle(color: whiteColor, fontSize: 12),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 12,
                              child: TextFormField(
                                //controller: businessnameController,
                                style: TextStyle(color: blackColor),
                                // validator: (String value) {
                                //   if (value.isEmpty) {
                                //     return 'Please Enter  Business Name';
                                //   }
                                //   return null;
                                // },
                                // onSaved: (String value) {
                                //   name = value;
                                // },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    color: whiteColor,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  hintText: 'Email',
                                  contentPadding: EdgeInsets.all(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 12,
                              child: TextFormField(
                                //controller: businessnameController,
                                style: TextStyle(color: blackColor),
                                // validator: (String value) {
                                //   if (value.isEmpty) {
                                //     return 'Please Enter  Business Name';
                                //   }
                                //   return null;
                                // },
                                // onSaved: (String value) {
                                //   name = value;
                                // },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    color: whiteColor,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  hintText: '940514XXXX',
                                  contentPadding: EdgeInsets.all(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        //controller: businessnameController,
                        style: TextStyle(color: blackColor),
                        // validator: (String value) {
                        //   if (value.isEmpty) {
                        //     return 'Please Enter  Business Name';
                        //   }
                        //   return null;
                        // },
                        // onSaved: (String value) {
                        //   name = value;
                        // },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: whiteColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                          hintText: 'Website',
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        //controller: businessnameController,
                        style: TextStyle(color: blackColor),
                        // validator: (String value) {
                        //   if (value.isEmpty) {
                        //     return 'Please Enter  Business Name';
                        //   }
                        //   return null;
                        // },
                        // onSaved: (String value) {
                        //   name = value;
                        // },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: whiteColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                          hintText: ' City',
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        //controller: businessnameController,
                        style: TextStyle(color: blackColor),
                        // validator: (String value) {
                        //   if (value.isEmpty) {
                        //     return 'Please Enter  Business Name';
                        //   }
                        //   return null;
                        // },
                        // onSaved: (String value) {
                        //   name = value;
                        // },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: whiteColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                          hintText: 'Address',
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 50, height: 50),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return FrameSelectedBrandAccount();
                                },
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: whiteColor,
                              onPrimary: blackColor,
                              shape: CircleBorder(),
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
