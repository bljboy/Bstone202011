import 'package:bstone/login_route/tabviews/routeloveview.dart';
import 'package:bstone/model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<Map> imglist = [
  {"url": "http://pic1.win4000.com/pic/c/a7/9067fb0dd3.jpg"},
  {"url": "http://pic1.win4000.com/pic/c/a7/731039b23b.jpg"},
  {"url": "http://pic1.win4000.com/pic/c/a7/8a6829762a.jpg"},
  {"url": "http://pic1.win4000.com/pic/c/a7/8a6829762a.jpg"},
];

class LoveViwe extends StatefulWidget {
  @override
  _LoveViweState createState() => _LoveViweState();
}

class _LoveViweState extends State<LoveViwe> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet(int index) {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) {
      return BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(8.0),
          height: 470,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Color(0xFFCCCCCC),
                              backgroundImage:
                                  NetworkImage(posts[index].imageUrl),
                            ),
                            Padding(padding: EdgeInsets.only(left: 8)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  posts[index].author,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "12:59",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0, top: 6.0),
                    child: Text(
                      '${posts[index].title}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    });
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.network(
                  posts[index].imageUrl,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                left: 0,
                top: 100,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(0, 0, 0, 0),
                        Color.fromARGB(80, 0, 0, 0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFFCCCCCC),
                      backgroundImage: NetworkImage(posts[index].imageUrl),
                    ),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          " demo",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "12:59",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF999999),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 14),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFC600),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    "#标签",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '${posts[index].title}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    _openBottomSheet(index);
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        size: 16,
                        color: Color(0xFF999999),
                      ),
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Text(
                        "3",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      size: 16,
                      color: Color(0xFFFFC600),
                    ),
                    Padding(padding: EdgeInsets.only(left: 6)),
                    Text(
                      "2",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      size: 16,
                      color: Color(0xFF999999),
                    ),
                    Padding(padding: EdgeInsets.only(left: 6)),
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      backgroundColor: Color(0XFFFAFAFA),
      body: Container(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "发布话题",
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return LoveViewRoute();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class GridBuilder extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
        width: 15,
        height: 15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }
}
