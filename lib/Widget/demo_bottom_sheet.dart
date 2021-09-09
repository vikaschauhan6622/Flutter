import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Table/demo_data_table.dart';

void main() {runApp(MyApp());}

class DemoBottomSheet extends StatefulWidget {
  const DemoBottomSheet({Key? key}) : super(key: key);

  @override
  _DemoBottomSheetState createState() => _DemoBottomSheetState();
}

class _DemoBottomSheetState extends State<DemoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: ElevatedButton(
      child: Text('showBottomSheet'),
      onPressed: () {
        Scaffold.of(context).showBottomSheet<void>(
          (BuildContext context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('BottomSheet'),
                    ElevatedButton(
                        child: Text('Close BottomSheet'),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            );
          },
        );
      },
    ))));
  }
}
