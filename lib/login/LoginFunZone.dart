import 'package:bstone/box.dart';
import 'package:bstone/login_route/pageviews/community.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget radioButton() {
  return Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    ),
  );
}

class LoginFunZone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 12.0,
        ),
        GestureDetector(
          onTap: () {},
          child: radioButton(),
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          "记住密码",
          style: TextStyle(fontSize: 12, fontFamily: 'pfont'),
        ),
        InkWell(
          child: Container(
            width: ScreenUtil.getInstance().setWidth(300),
            height: ScreenUtil.getInstance().setWidth(100),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF17ead9), Color(0xFF6078ea)],
                ),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF6078ea).withOpacity(0.3),
                      offset: Offset(0.0, 8.0),
                      blurRadius: 8.0)
                ]),
            child: Material(
              color: Colors.transparent,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return Box();
                  }), (route) => route == null);
                },
                child: Center(
                  child: Text(
                    "登录",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'milk',
                        letterSpacing: 1.0),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
