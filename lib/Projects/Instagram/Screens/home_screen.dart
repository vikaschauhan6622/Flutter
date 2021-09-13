import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _ctr = ScrollController();
  ScrollController _ctr1 = ScrollController();
  final List story = [
    {
      "image": "assets/images/8.jpg",
      "user name": 'Your Story',
    },
    {
      "image": "assets/images/3.jpg",
      "user name": 'groot_01',
    },
    {"image": "assets/images/4.jpg", "user name": 'marvel.001'},
    {"image": "assets/images/7.jpg", "user name": 'cartoon.02'},
    {"image": "assets/images/9.jpg", "user name": 'new_002'},
    {"image": "assets/images/8.jpg", "user name": 'story_03'},
    {"image": "assets/images/3.jpg", "user name": 'joker.003'},
    {"image": "assets/images/4.jpg", "user name": 'dark_knight_04'},
    {"image": "assets/images/7.jpg", "user name": 'groot_004'},
    {"image": "assets/images/9.jpg", "user name": 'story_05'},
    {"image": "assets/images/8.jpg", "user name": 'new._.005'},
    {"image": "assets/images/3.jpg", "user name": 'story_06'},
    {"image": "assets/images/4.jpg", "user name": 'new_006'},
    {"image": "assets/images/7.jpg", "user name": 'story_07'},
    {"image": "assets/images/9.jpg", "user name": 'new_007'},
    {"image": "assets/images/8.jpg", "user name": 'story_08'},
    {"image": "assets/images/3.jpg", "user name": 'new_008'},
    {"image": "assets/images/4.jpg", "user name": 'story_09'},
    {"image": "assets/images/7.jpg", "user name": 'new_009'},
    {"image": "assets/images/9.jpg", "user name": 'story_10'},
  ];
  final List post = [
    {
      "showmaterial": "assets/images/SSR.jpg",
      "likes": '510,555',
      'qutoes':
          'Raat lambi hai to kya,khwaab bunenge. Ye sab to bahana hai, hum ese hi rahenge. Tut kar taron sa gira to milkar chunenge.',
    },
    {
      "showmaterial": "assets/images/1.jpg",
      "likes": '210,555',
      'qutoes':
          "We all know the truth: But in times of crisis, the wise build bridges, while the foolish build barriers.",
    },
    {
      "showmaterial": "assets/images/2.jpg",
      "likes": '210,555',
      'qutoes': "You're ancestors called it magic, and you call it science.",
    },
    {
      "showmaterial": "assets/images/3.jpg",
      "likes": '610,555',
      'qutoes': "Don't waste it. Don't waste your life.",
    },
    {
      "showmaterial": "assets/images/4.jpg",
      "likes": '510,555',
      'qutoes':
          "Whatever happens tomorrow, you must promise me one thing. That you will stay who you are, not a perfect soldier, but a good man.",
    },
    {
      "showmaterial": "assets/images/5.jpg",
      "likes": '110,555',
      'qutoes':
          "But a thing isn't beautiful because it lasts. It's a privilege to be among them.",
    },
    {
      "showmaterial": "assets/images/6.jpg",
      "likes": '510,555',
      'qutoes': "Wakanda Forever.",
    },
    {
      "showmaterial": "assets/images/7.jpg",
      "likes": '10,555',
      'qutoes':
          "There was an idea, Stark knows this, called the Avengers Initiative.",
    },
    {
      "showmaterial": "assets/images/8.jpg",
      "likes": '120,555',
      'qutoes':
          "Odin: Do you not truly feel the gravity of your crimes? Wherever you go there is war, ruin and death!",
    },
    {
      "showmaterial": "assets/images/9.jpg",
      "likes": '140,555',
      'qutoes': "We are Groot.",
    },
    {
      "showmaterial": "assets/images/SSR.jpg",
      "likes": '510,555',
      'qutoes':
          "I know you were only doing what you believe in, and that's all any of us can do, it's all any of us should.",
    },
    {
      "showmaterial": "assets/images/1.jpg",
      "likes": '120,555',
      'qutoes':
          "The city is flying. We're fighting an army of robots. And I have a bow and arrow. None of this makes sense.",
    },
    {
      "showmaterial": "assets/images/2.jpg",
      "likes": '310,555',
      'qutoes': "Higher, further, faster, baby.",
    },
    {
      "showmaterial": "assets/images/3.jpg",
      "likes": '210,555',
      'qutoes':
          " You never know. You hope for the best and make do with what you get.",
    },
    {
      "showmaterial": "assets/images/4.jpg",
      "likes": '410,555',
      'qutoes':
          "At some point, we all have to choose, between what the world wants you to be, and who you are.",
    },
    {
      "showmaterial": "assets/images/5.jpg",
      "likes": '310,555',
      'qutoes':
          "The world has changed and none of us can go back. All we can do is our best, and sometimes the best that we can do is to start over.",
    },
    {
      "showmaterial": "assets/images/6.jpg",
      "likes": '211,555',
      'qutoes': "You wanna get to them? You gotta go through me."
    },
    {
      "showmaterial": "assets/images/7.jpg",
      "likes": '311,555',
      'qutoes': "It's not about saving our world. It's about saving theirs.",
    },
    {
      "showmaterial": "assets/images/8.jpg",
      "likes": '611,555',
      'qutoes': "Why don't you pick on someone your own size?",
    },
    {
      "showmaterial": "assets/images/9.jpg",
      "likes": '211,555',
      'qutoes': "Compromise where you can. Where you can't, don't.",
    },
    {
      "showmaterial": "assets/images/SSR.jpg",
      "likes": '11,455',
      'qutoes': "Captain America: You got heart, kid. Where are you from?",
    },
    {
      "showmaterial": "assets/images/1.jpg",
      "likes": '211,555',
      'qutoes':
          "Odin: One son who wanted the throne too much, and others who will not take it. Is this my legacy?",
    },
    {
      "showmaterial": "assets/images/2.jpg",
      "likes": '611,555',
      'qutoes':
          "Thor: Loki died with honour. I shall try to live the same. Is that not legacy enough?",
    },
    {
      "showmaterial": "assets/images/3.jpg",
      "likes": '211,555',
      'qutoes':
          "You guys are breaking down walls, you're healing. It's important.",
    },
    {
      "showmaterial": "assets/images/4.jpg",
      "likes": '211,555',
      'qutoes':
          "Yon-Rogg: Turn off the light show, and prove, prove to me, you can beat me with…",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            endDrawer: Drawer(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                    ),
                    accountEmail: Text("vikaschauhan6622@gmail.com"),
                    accountName: Text("Vikas Chauhan"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black45,
                      // child: Image.asset("assets/images/sun.png"),
                      child: Text("VC"),
                    ),
                  ),
                  ListTile(
                    title: Text('Online '),
                    leading: Icon(Icons.online_prediction, color: Colors.black),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.flag,
                      color: Colors.black,
                    ),
                    title: Text("Privacy Policy"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('About Us'),
                    leading: Icon(Icons.people, color: Colors.black),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Log Out'),
                    leading: Icon(Icons.people, color: Colors.black),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: Image.asset(
                'assets/images/Instagram-Logo.png',
                alignment: Alignment.centerLeft,
                color: Colors.black,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 3,
              ),
              // actions: [
              //   // IconButton(
              //   //   icon: Icon(
              //   //     Icons.add,
              //   //     color: Colors.black,
              //   //   ),
              //   //   onPressed: () {
              //   //     // do something
              //   //   },
              //   // ),
              //   // IconButton(
              //   //   icon: Icon(
              //   //     Icons.message,
              //   //     color: Colors.black,
              //   //   ),
              //   //   onPressed: () {
              //   //     // do something
              //   //   },
              //   // ),
              // ],
            ),
            body: SingleChildScrollView(
              child: Container(
                // padding: EdgeInsets.only(left: 5,right: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Column(
                        //   children: [
                        //     Container(
                        //       child: Stack(
                        //         children: [
                        //           Container(
                        //             padding: EdgeInsets.all(20),
                        //             height: 80,
                        //             width: 80,
                        //             decoration: BoxDecoration(
                        //               image: DecorationImage(
                        //                   fit: BoxFit.cover,
                        //                   image:
                        //                       AssetImage('assets/images/5.jpg'
                        //                           // story[index]["add story"]
                        //                           )),
                        //               borderRadius:
                        //                   BorderRadius.all(Radius.circular(50.0)),
                        //             ),
                        //           ),
                        //           Container(
                        //             color: Colors.blue,
                        //             height: 20,
                        //             width: 20,
                        //             child: Center(
                        //                 child: Icon(
                        //               // story[index]["add icon"],
                        //               Icons.add,
                        //               color: Colors.white,
                        //             )),
                        //           ),
                        //         ],
                        //       ),
                        //
                        //     ),
                        //     Text('Your Story'),
                        //   ],
                        //
                        // ),
                        SingleChildScrollView(
                          controller: _ctr,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 8),
                            height: MediaQuery.of(context).size.height / 7.2,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                itemCount: story.length,
                                scrollDirection: Axis.horizontal,
                                controller: _ctr,
                                shrinkWrap: true,
                                // physics: BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    story[index]["image"],
                                                  )),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        story[index]["user name"],
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: ListView.builder(
                            itemCount: post.length,
                            controller: _ctr1,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/SSR.jpg")),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'filmygyan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    post[index]["showmaterial"],
                                    height:
                                        MediaQuery.of(context).size.height / 2,
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 40,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.favorite_border),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              40),
                                      Icon(Icons.message),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              40),
                                      Icon(Icons.share),
                                      SizedBox(
                                        width: 230,
                                      ),
                                      Icon(Icons.save_alt),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        post[index]["likes"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'filmygyan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            post[index]['qutoes'],
                                          ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
