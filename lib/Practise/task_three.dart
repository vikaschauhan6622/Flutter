import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_practise/Practise/demo.dart';

class TaskThree extends StatefulWidget {
  const TaskThree({Key? key}) : super(key: key);

  @override
  _TaskThreeState createState() => _TaskThreeState();
}

class _TaskThreeState extends State<TaskThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
           // padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amberAccent)
                        ),
                        width: 170,
                        child: InteractiveViewer(  maxScale: 5.0,
                            boundaryMargin: EdgeInsets.all(5.0),
                            minScale: 0.1
                            ,child: Image.asset('assets/images/flutter1.png'))),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54)
                            ),
                            child: Text(
                              'Car',
                              style: TextStyle(color: Colors.red, fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.cyan)
                              ),
                              child: Text(
                                'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform  ',
                                style: TextStyle(fontSize: 13),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purpleAccent)
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.calendar_today, size: 17),
                                  ),
                                  TextSpan(
                                      text: "Date:",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 17)),
                                  TextSpan(
                                      text: "03/08/21",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // if you need this
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                            border: Border(
                              top: BorderSide(width: 16.0, color: Colors.lightBlue),
                              bottom: BorderSide(width: 16.0, color: Colors.lightBlue),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0.1, 3.0),
                                blurRadius: 1.0,
                                spreadRadius: 2.0,
                              ),
                            ]
                         //   border: Border.all(color: Colors.orangeAccent)
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20,),
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.deepPurple)
                                    ),
                                    child: Text('DEMO ',style: TextStyle(fontSize: 13))

                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.limeAccent),
                                      //shape: BoxShape.values[10],
                                    ),
                                      child: Text('Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.',style: TextStyle(fontSize: 13))

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.redAccent)
                                  ),
                                  child: Icon(Icons.add_location),
                                ),
                              ],
                            ),
                            SizedBox(
                             width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent)
                              ),
                              child: Text('Car'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(

                  onTap: () =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Demo_layout())),

                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/flutter1.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
