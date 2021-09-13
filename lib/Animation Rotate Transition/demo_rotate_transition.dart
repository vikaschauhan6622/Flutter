import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

///Example App
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: SecondPage(
                title: 'demo',
              ),
              type: PageTransitionType.fade,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}

/// Example page
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Fade Second Page - Default'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Left To Right Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Left To Right with Fade Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    alignment: Alignment.topCenter,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Right To Left Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Right To Left with Fade Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Top to Bottom Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.topToBottom,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Bottom to Top Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.bottomToTop,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Scale Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Rotate Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.bounceOut,
                    type: PageTransitionType.rotate,
                    alignment: Alignment.topCenter,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Size Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.bounceOut,
                    type: PageTransitionType.size,
                    child: SecondPage(
                      title: 'demo',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Right to Left Joined'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        curve: Curves.easeInOut,
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        type: PageTransitionType.rightToLeftJoined,
                        child: SecondPage(
                          title: 'demo',
                        ),
                        childCurrent: this));
              },
            ),
            ElevatedButton(
              child: Text('Left to Right Joined'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRightJoined,
                      child: SecondPage(
                        title: 'demo',
                      ),
                      childCurrent: this),
                );
              },
            ),
            ElevatedButton(
              child: Text('PushNamed With arguments'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/second",
                  arguments: "with Arguments",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

///Example second page
class SecondPage extends StatelessWidget {
  /// Page Title
  final String title;

  /// second page constructor
  const SecondPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Transition Plugin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Second Page'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    type: PageTransitionType.topToBottom,
                    child: ThirdPage(
                      title: 'demo3',
                    ),
                  ),
                );
              },
              child: Text('Go Third Page'),
            )
          ],
        ),
      ),
    );
  }
}

/// third page
class ThirdPage extends StatelessWidget {
  /// Page Title
  final String title;

  /// second page constructor
  const ThirdPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Transition Plugin"),
      ),
      body: Center(
        child: Text('ThirdPage Page'),
      ),
    );
  }
}
