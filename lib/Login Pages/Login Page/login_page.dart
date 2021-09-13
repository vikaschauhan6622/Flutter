import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_practise/Login%20Pages/Login%20Page/home_screen.dart';
import 'package:new_practise/Login%20Pages/Login%20Page/registration_page.dart';
import 'package:new_practise/Login%20Pages/Login%20Page/reset_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true; // declare   value  asign
  //TextEditingController namecontroller   = TextEditingController();

  //   late String name ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // namecontroller.text = 'Parth';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 100.0,
              width: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 12),
            Column(
              children: [
                TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  //controller: namecontroller ,
                  keyboardType: TextInputType.text,
                  obscureText: !_obscureText,
                  //This will obscure text dynamically
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(elevation: 5),
                        child: Text('Login'))),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Reset(),
                          ));
                    },
                    child: Text(
                      'Reset Password ?',
                      style: TextStyle(color: Colors.red),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Not a Member?'),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegistrationPage(),
                                ));
                          },
                          child: Text(
                            'Sign Up Now',
                            style: TextStyle(color: Colors.red),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    )));
  }
}
