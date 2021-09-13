import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Demo_layout extends StatefulWidget {
  const Demo_layout({Key? key}) : super(key: key);

  @override
  _Demo_layoutState createState() => _Demo_layoutState();
}

class _Demo_layoutState extends State<Demo_layout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              FloatingActionButton(onPressed: (){

                              Navigator.pop(context);
              },
                splashColor: Colors.green,
                child:Icon(Icons.backspace, size: 50,),
              ),


              ElevatedButton(
                onLongPress: (){
                  print('Hello');
                },
                child: Text('Login'),
                onPressed: () {

                },

              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Text...",
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.red,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'First',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'First',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Third',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Fourth',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Five',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Divider(thickness: 2, color: Colors.black,),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.orange,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Icon(Icons.add_location, size: 50.0, color: Colors.pink),
                  Icon(
                    Icons.adjust,
                    size: 50.0,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.adjust,
                    size: 50.0,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    color: Colors.orange,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Icon(
                    Icons.adjust,
                    size: 50.0,
                    color: Colors.cyan,
                  ),
                ],
              ),
              Text(
                'Flutter',
                style: TextStyle(color: Colors.yellow, fontSize: 30.0),
              ),
              Text(
                'Flutter',
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),


             // Row(
             //   children: [
             //     Container(
             //         height:100,width: 100,child: Image.asset('assets/images/flutter1.png', fit: BoxFit.fitHeight ,)),
             //      Container(
             //     height:300,width:200,
             //         child: Image.asset('assets/images/Screenshot_2021-07-22-17-25-20-40_6c892c42c751c58e81c3e50bc43f1eeb.jpg')),
             //   ],
             // ),
             //  Text.rich(
             //    TextSpan(
             //      children: <TextSpan>[
             //        TextSpan(
             //            text: "Hello gkeljgjgkljgkldjgkljgkldjgkljgkljgkljgkldjgkljgkljgkljgkljgkljgkljkgljdkgljgkljkgl",
             //            style: TextStyle(fontStyle: FontStyle.italic,
             //              color: Colors.red,
             //              fontSize: 30,
             //            )),
             //        TextSpan(
             //            text: "World",
             //
             //            style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 30,  color: Colors.green,)),
             //      ],
             //    ),
             //  ),

            Row(
              children: [
                Expanded(
                  child: Text('Hello gkeljgjgkljgkldjgkljgkldjgkljgkljgkljgkldjgkljgkljgkljgkljgkljgkljkgljdkgljgkljkgl',
                  ),
                ),
              ],
            ),

            // Spacer(),




            ],
          ),
        ),
      ),
    );
  }
}
