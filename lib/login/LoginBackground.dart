import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Image.asset('lib/images/image_01.png'),
        ),
        Expanded(
          child: Container(),
        ),
        Image.asset('lib/images/image_02.png'),
      ],
    );
  }
}
