import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/account/add_brand_account_screen.dart';
import 'package:creato/screens/dashboard/account/help_support_screen.dart';
import 'package:creato/screens/dashboard/account/my_business_account_screen.dart';
import 'package:creato/screens/select_language%20_screen.dart';
import "package:flutter/material.dart";

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      img_account_background,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Metronics",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Information Technology",
                                  style: TextStyle(
                                      fontSize: 16, color: whiteColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "+91 123456XXXX",
                                  style: TextStyle(
                                      fontSize: 16, color: whiteColor),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15, right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Package not active in the business, click on below to subscribe package.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(stops: [
                                            0.4,
                                            1
                                          ], colors: [
                                            splashGradientTwo,
                                            splashGradientOne
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0.0,
                                          ),
                                          onPressed: () {
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            //
                                            // },));
                                          },
                                          child: Text(
                                            'SUBSCRIBE NOW',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 300),
                      child: Column(
                        children: [
                          buildProfileItem(
                              iconData: Icons.business_center_rounded,
                              name: 'My Business ',
                              onTap: () {
                                Navigator.of(context)
                                    .push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyBusinessAccountScreen(),
                                ));
                              }),
                          buildProfileItem(
                              iconData: Icons.home_repair_service,
                              name: 'Edit Your Brand Frame',
                              onTap: () {
                                Navigator.of(context)
                                    .push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AddBrandAccountScreen(),
                                ));
                              }),
                          buildProfileItem(
                              iconData: Icons.language,
                              name: 'Preferred Language',
                              onTap: () {
                                Navigator.of(context)
                                    .push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SelectLanguageScreen(),
                                ));
                              }),
                          buildProfileItem(
                              iconData: Icons.help,
                              name: 'Help & Support',
                              onTap: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HelpSupportScreen()));
                              }),
                          buildProfileItem(
                              iconData: Icons.privacy_tip_outlined,
                              name: 'Privacy Policy',
                              onTap: () {
                                // Navigator.of(context)
                                //     .push(new MaterialPageRoute(
                                //   builder: (BuildContext context) =>ShareApp(),
                                // ));
                              }),
                          buildProfileItem(
                              iconData: Icons.share,
                              name: 'Share App',
                              onTap: () {
                                // Navigator.of(context)
                                //     .push(new MaterialPageRoute(
                                //   builder: (BuildContext context) =>ShareApp(),
                                // ));
                              }),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 50),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.logout,
                                    color: Colors.redAccent, size: 30),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildProfileItem(
      {required IconData iconData,
      required String name,
      required VoidCallback onTap}) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            leading: Icon(
              iconData,
              color: blackColor,
            ),
            title: Text(
              name,
              style: TextStyle(
                  fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24.0,
              color: blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
