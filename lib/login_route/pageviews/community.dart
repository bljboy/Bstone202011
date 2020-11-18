import 'package:bstone/box.dart';
import 'package:bstone/login.dart';
import 'package:bstone/login_route/tabviews/loveview.dart';
import 'package:bstone/login_route/tabviews/pageviewdemo.dart';
import 'package:bstone/login_route/tabviews/routeloveview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: IndexedStack(
            children: [
              TabBarView(
                children: [
                  LoveViwe(),
                  Icon(Icons.local_florist, size: 128, color: Colors.black12),
                  Icon(Icons.local_florist, size: 128, color: Colors.black12),
                  // PageViewDemo(),
                ],
              ),
            ],
          ),
          appBar: AppBar(
            centerTitle: true,
            title: Text('${ModalRoute.of(context).settings.arguments}'),
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: "侧标抽屉",
              onPressed: () {
                // showToast("点击了搜索");
                Scaffold.of(context).openDrawer();
                // debugPrint("点击了搜索");
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "搜索",
                onPressed: () {
                  // showToast("点击了搜索");
                  debugPrint("点击了搜索");
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                tooltip: "通知",
                onPressed: () {
                  // showToast("点击了搜索");
                  debugPrint("通知");
                },
              ),
            ],
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 15),
              unselectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelColor: Colors.black38,
              //图标未选中的颜色
              indicatorColor: Colors.black54,
              //图标下的滑动条颜色
              indicatorSize: TabBarIndicatorSize.label,
              //滑动条的长度和图标一直
              indicatorWeight: 1.2,
              //滑动条的高度
              labelColor: Colors.black54,
              //选中文字的颜色
              tabs: [
                Tab(
                  child: Text("告白"),
                ),
                Tab(
                  child: Text("资讯"),
                ),
                Tab(
                  child: Text("data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
