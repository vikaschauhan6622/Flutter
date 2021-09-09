import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class NW extends StatefulWidget {
  const NW({Key? key}) : super(key: key);

  @override
  _NWState createState() => _NWState();
}

class _NWState extends State<NW> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://www.excelptp.com/',
      ),
    );
  }
}
