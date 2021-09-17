import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:flutter/material.dart';

class GeneratedTicketScreen extends StatefulWidget {
  const GeneratedTicketScreen({Key? key}) : super(key: key);

  @override
  _GeneratedTicketScreenState createState() => _GeneratedTicketScreenState();
}

class _GeneratedTicketScreenState extends State<GeneratedTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
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
                  "Generate Ticket",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
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
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: lightGreyColor,
                    hintStyle: TextStyle(fontSize: 15, color: greyColor),
                    hintText: 'SELECT BUSINESS',
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: lightGreyColor,
                    hintStyle: TextStyle(fontSize: 15, color: greyColor),
                    hintText: 'TICKET TITLE ',
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: lightGreyColor,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: lightGreyColor,
                    hintStyle: TextStyle(fontSize: 15, color: greyColor),
                    hintText: 'DESCRIPTION ABOUT ISSUE ',
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text('ATTACHMENT',
                          style: TextStyle(color: Colors.red, fontSize: 15)),
                      SizedBox(height: 15),
                      Image.asset(
                        ic_attachment,
                        color: Colors.red,
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [0.4, 1],
                        colors: [splashGradientTwo, splashGradientOne]),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 2.5, 55),
                      elevation: 0.0,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return GeneratedTicketScreen();
                        },
                      ));
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
