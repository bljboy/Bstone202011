import 'package:bstone/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bstone/login/LoginLogo.dart';
import 'package:bstone/login/LoginFormCard.dart';
import 'package:bstone/login/LoginFunZone.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bstone/Widgets/SocialIcon.dart';
import 'package:bstone/Widgets/CustomIcons.dart';
import 'package:apifm/apifm.dart' as Apifm;
import 'package:flutter_qq/flutter_qq.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScrollView extends StatefulWidget {
  @override
  _LoginScrollViewState createState() => _LoginScrollViewState();
}

class _LoginScrollViewState extends State<LoginScrollView> {
  @override
  Widget build(BuildContext context) {
    loginQQ() async {
      const appid = '101915485';
      await FlutterQq.registerQQ(appid);
      var qqResult = await FlutterQq.login();
      if (qqResult.code == 0) {
        // 登录成功
        Fluttertoast.showToast(
            msg: '授权成功', gravity: ToastGravity.CENTER, fontSize: 14);
        var res = await Apifm.loginQQConnect(appid, qqResult.response['openid'],
            qqResult.response['accessToken']);
        if (res['code'] == 10000) {
          // 用户不存在，则先注册
          await Apifm.registerQQConnect({
            'oauthConsumerKey': appid,
            'openid': qqResult.response['openid'],
            'accessToken': qqResult.response['accessToken'],
          });
          // 注册完后重新登录
          res = await Apifm.loginQQConnect(appid, qqResult.response['openid'],
              qqResult.response['accessToken']);
        }
        if (res['code'] != 0) {
          // 登录失败
          Fluttertoast.showToast(
              msg: res['msg'], gravity: ToastGravity.CENTER, fontSize: 14);
          return;
        }
      } else if (qqResult.code == 1) {
        // 授权失败
        Fluttertoast.showToast(
            msg: qqResult.message, gravity: ToastGravity.CENTER, fontSize: 14);
      } else {
        // 用户取消授权
        Fluttertoast.showToast(
            msg: '已取消', gravity: ToastGravity.CENTER, fontSize: 14);
      }
    }

    setState(() {
      FlutterQq.registerQQ("101915485");
    });

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LoginLogo(),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(180),
            ),
            LoginFormCard(),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            LoginFunZone(),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(60),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalLine(),
                Text(
                  "第三方登录",
                  style: TextStyle(fontSize: 16.0, fontFamily: 'pfont'),
                ),
                horizontalLine()
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  colors: [
                    Color(0xFFef8e38),
                    Color(0xFFFDC830),
                  ],
                  iconData: CustomIcons.qq,
                  onPressed: () {
                    FlutterQq.login();
                    print("object");
                  },
                ),
                SocialIcon(
                  colors: [
                    Color(0xFFDCE35B),
                    Color(0xFF45B649),
                  ],
                  iconData: CustomIcons.wechat,
                  onPressed: () {},
                ),
                SocialIcon(
                  colors: [
                    Color(0xFF5FC3E4),
                    Color(0xFF8f94fb),
                    Color(0xFF8f94fb),
                  ],
                  iconData: CustomIcons.phone,
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "新用户?",
                  style: TextStyle(
                    fontFamily: 'pfont',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Register();
                    }));
                  },
                  child: Text(
                    "注册",
                    style: TextStyle(
                        color: Color(0xFF5d74e3), fontFamily: 'pfont'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget horizontalLine() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0), //对称距离
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(0.2), //颜色透明
    ),
  );
}
