import 'package:flutter/material.dart';

class DemoDropDown extends StatefulWidget {
  @override
  _DemoDropDownState createState() => _DemoDropDownState();
}

class _DemoDropDownState extends State<DemoDropDown> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item"),
    ListItem(4, "Five Item"),
    ListItem(4, "Six Item"),
    ListItem(4, "Seven Item"),
    ListItem(4, "Eight Item"),
    ListItem(4, "Nine Item"),
    ListItem(4, "Ten Item"),
    ListItem(4, "Eleven Item"),
    ListItem(4, "Twelve Item"),
    ListItem(4, "Thirteen Item"),
    ListItem(4, "Fourteen Item"),
    ListItem(4, "Fifteen Item"),
    ListItem(4, "Sixteen Item"),
    ListItem(4, "Seventeen Item"),
  ];

  List<DropdownMenuItem<ListItem>>? _dropdownMenuItems;
  ListItem? _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems![0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    dropdownColor: Colors.limeAccent,
                    value: _selectedItem,
                    items: _dropdownMenuItems,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value as ListItem?;
                      });
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 115,
          ),
          Text("You select ${_selectedItem!.name}"),
        ],
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
