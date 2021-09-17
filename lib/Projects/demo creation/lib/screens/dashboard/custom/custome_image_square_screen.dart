import 'dart:io';

import 'package:creato/commons/colors_common.dart';
import 'package:creato/commons/images_path.dart';
import 'package:creato/commons/my_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageSquareScreen extends StatefulWidget {
  const CustomImageSquareScreen({Key? key}) : super(key: key);

  @override
  _CustomImageSquareScreenState createState() =>
      _CustomImageSquareScreenState();
}

class _CustomImageSquareScreenState extends State<CustomImageSquareScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  File? image;
  List<DropDownItemModel> _dropDownItemModelList = [
    DropDownItemModel(fontFamilyName: 'OpenSans'),
    DropDownItemModel(fontFamilyName: 'Billabong'),
    DropDownItemModel(fontFamilyName: 'GrandHotel'),
    DropDownItemModel(fontFamilyName: 'Oswald'),
    DropDownItemModel(fontFamilyName: 'Quicksand'),
    DropDownItemModel(fontFamilyName: 'BeautyMountains'),
    DropDownItemModel(fontFamilyName: 'BiteChocolate'),
    DropDownItemModel(fontFamilyName: 'BlackberryJam'),
    DropDownItemModel(fontFamilyName: 'BunchBlossoms'),
    DropDownItemModel(fontFamilyName: 'BlackberryJam'),
    DropDownItemModel(fontFamilyName: 'CinderelaRegular'),
    DropDownItemModel(fontFamilyName: 'Halimun'),
    DropDownItemModel(fontFamilyName: 'LemonJelly'),
    DropDownItemModel(fontFamilyName: 'Countryside'),
    DropDownItemModel(fontFamilyName: 'QuiteMagicalRegular'),
    DropDownItemModel(fontFamilyName: 'Tomatoes'),
    DropDownItemModel(fontFamilyName: 'TropicalAsianDemoRegular'),
    DropDownItemModel(fontFamilyName: 'VeganStyle'),
  ];
  final List<String> nightList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  ];

  DropDownItemModel? _dropDownItemModel;
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  bool boldPressed = true;
  bool italicPressed = true;
  double _value = 0.0;

  List selectedIndexList = [
    img_frame1,
    img_frame2,
    img_frame3,
    img_frame4,
    img_frame5,
    img_frame6
  ];

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    _dropDownItemModel = _dropDownItemModelList[0];
    super.initState();
  }

  Future _pickImage(ImageSource source) async {
    try {
      final image =
          await ImagePicker().pickImage(source: source, imageQuality: 100);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Fail to pick image : $e");
    }
  }

  Color _color = Colors.blue;

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
            ],
          ),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              ic_share,
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
          height: MediaQuery.of(context).size.height,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  image != null
                      ? Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: FileImage(image!),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                  BoxShadow(
                                    color: greyColor,
                                    blurRadius: 10.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ])),
                          ),
                        )
                      : Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(postbanao_bg),
                                    fit: BoxFit.fill,
                                  ),
                                  boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ])),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Creato",
                    style: TextStyle(
                        color: useWhiteForeground(pickerColor)
                            ? currentColor
                            : blackColor,
                        fontWeight:
                            boldPressed ? FontWeight.normal : FontWeight.bold,
                        fontStyle:
                            italicPressed ? FontStyle.normal : FontStyle.italic,
                        fontSize: 15 + _value),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBar(
                      labelPadding: EdgeInsets.only(left: 8, right: 8),
                      isScrollable: true,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: redColor,
                      tabs: [
                        Tab(
                          child: Container(
                            height: 20,
                            child: Text(
                              'Background',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 20,
                            child: Text(
                              'Text',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 20,
                            child: Text(
                              'Image',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 20,
                            child: Text(
                              'Shape',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 20,
                            child: Text(
                              'Frames',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                      controller: _tabController,
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: [splashGradientTwo, splashGradientTwo])),
                      child: InkWell(
                        onTap: () {
                          // navigatePage(Done_Custom_Template(), context ,isReplace: true);
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Done',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: MyColorPicker(
                                onSelectColor: (value) {
                                  setState(() {
                                    _color = value;
                                  });
                                },
                                availableColors: [
                                  Colors.blue,
                                  Colors.green,
                                  Colors.greenAccent,
                                  Colors.yellow,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple,
                                  Colors.grey,
                                  Colors.deepOrange,
                                  Colors.teal
                                ],
                                initialColor: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 7,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 5,
                                        bottom: 10,
                                        top: 10),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<DropDownItemModel>(
                                        icon: Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: greyColor,
                                        ),
                                        iconEnabledColor: blackColor,
                                        items: _dropDownItemModelList
                                            .map((dropDownItemModel) =>
                                                DropdownMenuItem<
                                                    DropDownItemModel>(
                                                  child: Text(dropDownItemModel
                                                      .fontFamilyName),
                                                  value: dropDownItemModel,
                                                ))
                                            .toList(),
                                        onChanged: (DropDownItemModel?
                                            dropDownItemModel) {
                                          setState(() => _dropDownItemModel =
                                              dropDownItemModel);
                                        },
                                        hint: Text(
                                          _dropDownItemModel!.fontFamilyName,
                                          style: TextStyle(
                                            color: greyColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () => pickColor(context),
                                  child: Container(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: currentColor,
                                      border: Border.all(
                                        color: currentColor,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 5, bottom: 15, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          boldPressed = !boldPressed;
                                        });
                                      },
                                      child: Image.asset(
                                        ic_bold,
                                        height: 30,
                                        width: 30,
                                      )),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        italicPressed = !italicPressed;
                                      });
                                    },
                                    child: Image.asset(
                                      ic_italic,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  Image.asset(
                                    ic_typography,
                                    height: 30,
                                    width: 30,
                                  ),
                                  Image.asset(
                                    ic_align,
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Slider(
                            value: _value,
                            activeColor: redColor,
                            inactiveColor: greyColor,
                            min: 0.0,
                            max: 100.0,
                            divisions: 100,
                            label: "$_value",
                            onChanged: (double s) {
                              setState(() {
                                _value = s;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: GridView.builder(
                        padding: const EdgeInsets.only(top: 10.0),
                        itemCount: nightList.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return InkWell(
                              onTap: () {
                                _showPicker(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    ic_gallary,
                                    fit: BoxFit.fill,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                            );
                          }
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                nightList[index - 1],
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //maxCrossAxisExtent: 150,
                          crossAxisCount: 6,
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                    ),
                    Container(
                      child: GridView.builder(
                        padding: const EdgeInsets.only(top: 10.0),
                        itemCount: nightList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                nightList[index],
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //maxCrossAxisExtent: 150,
                          crossAxisCount: 6,
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                    ),
                    Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      // border: Border.all(color: Color(0xff940D5A)),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(17.0),
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
                                                selectedIndexList.remove(index);
                                              }
                                              setState(() {});
                                            },
                                            child: selectedIndexList
                                                    .contains(index)
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        // BoxShape.circle or BoxShape.retangle
                                                        //color: const Color(0xFF66BB6A),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color:
                                                                  Colors.orange,
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
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Container gridThumbnail(Color color) {
    return Container(
        height: 90,
        width: 120,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: greyColor,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ]));
  }

  void _showPicker(context) {
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
                        _pickImage(ImageSource.gallery);
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
                      _pickImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void pickColor(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: currentColor,
              onColorChanged: (value) {
                setState(() {
                  this.pickerColor = value;
                });
              },
              showLabel: false,
              pickerAreaHeightPercent: 0.8,
              enableAlpha: false,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Got it',
                style: TextStyle(color: blackColor),
              ),
              onPressed: () {
                setState(() => currentColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class DropDownItemModel {
  String fontFamilyName;

  DropDownItemModel({required this.fontFamilyName});
}
