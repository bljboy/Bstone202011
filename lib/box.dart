import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bstone/login_route/box_bottom.dart';

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).popUntil(ModalRoute.withName("/Box"));
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 1920, allowFontScaling: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      home: BottomNav(),
    );
  }
}
