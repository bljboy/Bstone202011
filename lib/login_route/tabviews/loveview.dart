import 'package:bstone/model/post.dart';
import 'package:flutter/material.dart';

class LoveViwe extends StatefulWidget {
  @override
  _LoveViweState createState() => _LoveViweState();
}

class _LoveViweState extends State<LoveViwe> {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
