import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Areally(),
    );
  }
}

class Areally extends StatefulWidget {
  @override
  _AreallyState createState() => _AreallyState();
}

class _AreallyState extends State<Areally> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   WebviewScaffold(
        url: "https://areallystores.com/",
        appCacheEnabled: true,
        withZoom: true,
        withLocalStorage: true,
        useWideViewPort: true,
        hidden: true,

        initialChild: Container(

          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),

      )
    );


  }
}
