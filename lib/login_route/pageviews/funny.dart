
import 'package:flutter/material.dart';

class Funny extends StatefulWidget {
  @override
  _FunnyState createState() => _FunnyState();
}

class _FunnyState extends State<Funny> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("Funny"),
      ),
    );
  }
}
