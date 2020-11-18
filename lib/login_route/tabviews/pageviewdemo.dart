import 'package:bstone/model/post.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.brown[900],
      alignment: Alignment(0.0, 0.0),
      child: Text(
        "ONE",
        style: TextStyle(color: Colors.white, fontSize: 85.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // scrollDirection: Axis.horizontal,
      scrollDirection: Axis.vertical,
      // reverse: true,
      children: [
        PageView.builder(
          itemCount: 2,
          itemBuilder: _itemBuilder,
        )
      ],
    );
  }
}
