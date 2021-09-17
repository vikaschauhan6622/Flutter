import 'dart:io';

import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/screens/dashboard/account/detail_add_brand_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AddBrandAccountScreen extends StatefulWidget {
  const AddBrandAccountScreen({Key? key}) : super(key: key);

  @override
  _AddBrandAccountScreenState createState() => _AddBrandAccountScreenState();
}

class _AddBrandAccountScreenState extends State<AddBrandAccountScreen> {
  File? logoImage, profileImage;
  TextEditingController businessnameController = TextEditingController();
  String? businessString, name;
  bool _validate = false;

  final GlobalKey<FormState> _scaffoldKey = GlobalKey<FormState>();

  Future _pickLogoImage(ImageSource source) async {
    try {
      final imageLogo =
          await ImagePicker().pickImage(source: source, imageQuality: 100);
      if (imageLogo == null) return;
      final imageTemporary = File(imageLogo.path);
      setState(() {
        this.logoImage = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Fail to pick image : $e");
    }
  }

  Future _pickProfileImage(ImageSource source) async {
    try {
      final imageProfile =
          await ImagePicker().pickImage(source: source, imageQuality: 100);
      if (imageProfile == null) return;
      final imageTemporary = File(imageProfile.path);
      setState(() {
        this.profileImage = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Fail to pick image : $e");
    }
  }

  // @override
  // void initState() {
  //   print('authMobile ---> $authMobile');
  //   super.initState();
  //   var data = widget.SendData;
  //   print('  Here is busienss name $data');
  //   businessnameController.text = data;
  //
  // }

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
                        'We need PNG logo for best result ',
                        style: TextStyle(color: whiteColor, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 12,
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.cloud_upload_rounded,
                                  color: blackColor,
                                  size: 25,
                                ),
                                label: Text(
                                  'Upload Your Logo ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  _showLogoPicker(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: whiteColor,
                                  onPrimary: blackColor,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
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
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.cloud_upload_rounded,
                                  color: blackColor,
                                  size: 25,
                                ),
                                label: Text(
                                  'Upload Your Image ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  _showProfilePicker(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: whiteColor,
                                  onPrimary: blackColor,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Business Name ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: businessnameController,
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
                          hintText: 'Enter Your Business Name',
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Frame Preview',
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
                                  child: logoImage != null
                                      ? Image.file(
                                          logoImage!,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          fit: BoxFit.cover,
                                        )
                                      : Container(
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
                                  child: profileImage != null
                                      ? Image.file(
                                          profileImage!,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          fit: BoxFit.cover,
                                        )
                                      : Container(
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
                                  return DetailAddBrandAccountScreen();
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

  void _showLogoPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(
                        Icons.photo_library,
                        color: blackColor,
                      ),
                      title: new Text('Photo Library',
                          style: TextStyle(
                            color: blackColor,
                          )),
                      onTap: () {
                        _pickLogoImage(ImageSource.gallery);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(
                      Icons.photo_camera,
                      color: blackColor,
                    ),
                    title: new Text('Camera',
                        style: TextStyle(
                          color: blackColor,
                        )),
                    onTap: () {
                      _pickLogoImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showProfilePicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(
                        Icons.photo_library,
                        color: blackColor,
                      ),
                      title: new Text('Photo Library',
                          style: TextStyle(
                            color: blackColor,
                          )),
                      onTap: () {
                        _pickProfileImage(ImageSource.gallery);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(
                      Icons.photo_camera,
                      color: blackColor,
                    ),
                    title: new Text('Camera',
                        style: TextStyle(
                          color: blackColor,
                        )),
                    onTap: () {
                      _pickProfileImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
