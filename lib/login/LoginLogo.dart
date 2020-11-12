import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'lib/images/logo.png',
          width: ScreenUtil.getInstance().setWidth(110),
          height: ScreenUtil.getInstance().setHeight(110),
        ),
        Text(
          "Bstone",
          style: TextStyle(
              fontFamily: "Mansalva-Regular",
              letterSpacing: .6,
              fontSize: ScreenUtil.getInstance().setSp(46),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
