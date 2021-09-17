import 'dart:async';

import 'package:flutter/material.dart';

class FlutterStreamBuilder extends StatefulWidget {
  @override
  _FlutterStreamBuilderState createState() => _FlutterStreamBuilderState();
}

class _FlutterStreamBuilderState extends State<FlutterStreamBuilder> {
  double? _height;
  double? _width;

  final imgStream = StreamController<Image>();

  int imgCounter = -1;

  final List<Image> imageList = [
    Image.network(
      'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  void dispose() {
    imgStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: imgStream.stream,
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (!snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                            //   backgroundColor:Colors.red,
                            ),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'Clicks Button',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    );
                  }

                  if (snapshot.connectionState == ConnectionState.done) {}

                  return Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    //  color: snapshot.data,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: snapshot.data,
                    ),
                  );
                }),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              onPressed: () {
                // colorStream.sink.add(Colors.blue);

                imgCounter++;

                if (imgCounter < imageList.length) {
                  imgStream.sink.add(imageList[imgCounter]);
                } else {
                  imgStream.close();
                }
              },
              child: Text("  Click Me  ".toUpperCase(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
            ),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  ScrollController _scroll = ScrollController();
  Contact _contact = Contact(
    id: 0,
    mobile: '',
    Lastname: '',
    Firstname: '',
    Email: '',
    Password: '',
  );
  List<Contact> _contacts = [];
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _ctrlMobile, pwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Welcome',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form(), _list()],
        ),
      ),
    );
  }

  _form() => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: SingleChildScrollView(
          controller: _scroll,
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'First Name'),
                  validator: (val) =>
                      (val!.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _contact.Firstname = val!),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Last Name'),
                  validator: (val) =>
                      (val!.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _contact.Lastname = val!),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (val) =>
                      (val!.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _contact.Email = val!),
                ),
                TextFormField(
                  controller: pwd,
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (val) =>
                      (val!.length > 10 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _contact.Password = val!),
                ),
                TextFormField(
                  controller: _ctrlMobile,
                  decoration: InputDecoration(labelText: 'Mobile'),
                  // validator: (val) =>
                  //     val!.length < 10 ? '10 characters required' : null,
                  onSaved: (val) => setState(() => _contact.mobile = val!),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 50.0,
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      RaisedButton(
                        onPressed: () => _onSubmit(),
                        child: Text('Submit'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            _contacts.clear();
                          });
                        },
                        child: Text('Clear'),
                        color: Colors.redAccent,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  _onSubmit() async {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      print('''
    Full Name : ${_contact.Lastname}
    Mobile : ${_contact.mobile}
    ''');
      _contacts.add(Contact(
        id: 0,
        Lastname: _contact.Lastname,
        mobile: _contact.mobile,
        Firstname: _contact.Firstname,
        Email: _contact.Email,
        Password: _contact.Password,
      ));
      form.reset();
    }
  }

  _list() => Expanded(
        child: Card(
          margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Scrollbar(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _contacts[index].Firstname == pwd?.text;
                      print('_ctrlMobile ${pwd?.text}');
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  _contacts[index].Firstname.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  _contacts[index].Lastname.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _contacts.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.delete)),
                                Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _contacts.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.update)),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              _contacts[index].Email.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              _contacts[index].Password.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              _contacts[index].mobile,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ListTile(
                      //   leading: Text(
                      //     _contacts[index].Firstname.toUpperCase(),
                      //     style: TextStyle(
                      //         color: Colors.redAccent,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      //   title: Text(
                      //     _contacts[index].Lastname.toUpperCase(),
                      //     style: TextStyle(
                      //         color: Colors.redAccent,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      //   subtitle: Text(
                      //       _contacts[index].mobile),
                      //   trailing: IconButton(
                      //     icon: Icon(Icons.delete),
                      //     onPressed: () {
                      //       setState(() {
                      //         _contacts.removeAt(index);
                      //       });
                      //     },
                      //   ),
                      //   onTap: () {},
                      // ),
                      Divider(
                        height: 5.0,
                      ),
                    ],
                  ),
                );
              },
              itemCount: _contacts.length,
            ),
          ),
        ),
      );
}

class Contact {
  Contact(
      {required this.id,
      required this.Firstname,
      required this.Lastname,
      required this.Email,
      required this.Password,
      required this.mobile});

  int id;
  String Firstname;
  String Lastname;
  String Email;
  String Password;
  String mobile;
}*/
