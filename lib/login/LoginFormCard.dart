import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(600),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                  spreadRadius: 1.0, //阴影扩散程度
                  blurRadius: 15.0 //阴影模糊程度
                  ),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -10.0),
                  spreadRadius: 1,
                  blurRadius: 10.0)
            ]),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "登录",
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(45),
                  fontFamily: "milk",
                  fontWeight: FontWeight.bold,
                  letterSpacing: .6,
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(30),
              ),
              Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "用户名",
                        style: TextStyle(
                            fontFamily: 'pfont',
                            fontSize: ScreenUtil.getInstance().setSp(26)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "请输入用户名",
                          // border: OutlineInputBorder(
                          //     borderSide: BorderSide(width: 3)),
                          hintStyle: TextStyle(
                              fontSize: 12.0,
                              letterSpacing: .4,
                              fontFamily: 'pfont',
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.getInstance().setHeight(30),
                      ),
                      Text(
                        "密码",
                        style: TextStyle(
                            fontFamily: 'pfont',
                            fontSize: ScreenUtil.getInstance().setSp(26)),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "请输入密码",
                          hintStyle: TextStyle(
                              fontSize: 12.0,
                              letterSpacing: .4,
                              fontFamily: 'pfont',
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.getInstance().setHeight(35),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "忘记密码？",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'pfont',
                                fontSize: ScreenUtil.getInstance().setSp(28)),
                          ),
                        ],
                      ),
                    ]),
              ),
            ])));
  }
}
