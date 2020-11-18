import 'package:bstone/login/LoginScrollView.dart';
import 'package:bstone/login_route/pageviews/community.dart';
import 'package:bstone/login_route/tabviews/loveview.dart';
import 'package:bstone/login_route/tabviews/routeloveview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bstone/login/LoginBackground.dart';
import 'package:bstone/box.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 1920, allowFontScaling: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: [LoginBackground(), LoginScrollView()],
        ),
      ),
    );
  }
}
