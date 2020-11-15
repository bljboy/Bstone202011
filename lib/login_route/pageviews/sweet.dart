import 'package:flutter/material.dart';

class Sweet extends StatefulWidget {
  @override
  _SweetState createState() => _SweetState();
}

class _SweetState extends State<Sweet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("Sweet"),
      ),
    );
  }
}
