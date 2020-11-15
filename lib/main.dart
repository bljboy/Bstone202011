import 'package:flutter/material.dart';
import 'file:///D:/003_MyWorksPace/03_MyFlutterWorksPace/bstone/lib/login.dart';
import 'package:bstone/box.dart';
main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Login()),
    );
  }
}
