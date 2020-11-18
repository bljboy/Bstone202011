import 'package:bstone/login_route/tabviews/routeloveview.dart';
import 'package:bstone/model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bstone/tools/PotoView.dart';

class LoveViwe extends StatefulWidget {
  @override
  _LoveViweState createState() => _LoveViweState();
}

class _LoveViweState extends State<LoveViwe> {
  void _RouteLook(int index) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return LoveViewRoute(
        title: posts[index].author,
        image: posts[index].imageUrl,
      );
    }));
  }

  List<Map> imglist = [
    {"url": "http://pic1.win4000.com/pic/c/a7/9067fb0dd3.jpg"},
    {"url": "http://pic1.win4000.com/pic/c/a7/731039b23b.jpg"},
    {"url": "http://pic1.win4000.com/pic/c/a7/8a6829762a.jpg"},
    {"url": "http://pic1.win4000.com/pic/c/a7/8a6829762a.jpg"},
  ];

  Widget _listItemBuilder(BuildContext context, int index) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          _RouteLook(index);
        },
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PotoView(
                        imageProvider: NetworkImage(
                            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2828669594,1440386958&fm=26&gp=0.jpg"),
                        heroTag: "simple",
                      );
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(posts[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(posts[index].author),
              subtitle: Text(
                '13:00',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                posts[index].title,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 1'),
                ),
                FlatButton(
                  textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 2'),
                ),
              ],
            ),
            Image.network(posts[index].imageUrl),
            SizedBox(
              height: 5,
            ),
            // Image.network(
            //   'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605693544453&di=a173a0c4c2b2c2bc9318e105a158bfd5&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201510%2F29%2F20151029140653_SzYFZ.jpeg',
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      body: Container(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "发布话题",
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
