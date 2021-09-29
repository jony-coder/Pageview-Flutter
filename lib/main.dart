import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageview/page1.dart';
import 'package:pageview/page2.dart';
import 'package:pageview/page3.dart';

void main(){
  runApp(MyApp());
  
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(
    initialPage: 0,
  );

@override
  void dispose() {
    // TODO: implement dispose
  _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
