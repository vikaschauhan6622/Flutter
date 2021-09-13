import 'package:flutter/material.dart';

import 'model.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  CheckBoxListTileDemo();

  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();
  bool _visible = false;

  void _toggle() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          ' Details',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.pages, color: Colors.black),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('price: 00')));
          },
        ),
      ),
      body: ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () async {
                // SharedPreferences prefs = await SharedPreferences.getInstance();
                // prefs.setString('Dilsad','${checkBoxListTileModel[index].price}');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckBoxListTileDemo()),
                );

                // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckBoxListTileDemo()));
              },
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  checkBoxListTileModel[index].img)),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(checkBoxListTileModel[index].title),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'Description',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                    child: Text(
                                      checkBoxListTileModel[index].description,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                      style: const TextStyle(
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Visibility(
                                visible: _visible,
                                child: Row(
                                  children: [
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(checkBoxListTileModel[index]
                                        .price
                                        .toString()),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                child:
                                    Text(checkBoxListTileModel[index].button),
                                onPressed: () {
                                  _toggle();
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
