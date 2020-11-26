import 'package:bstone/login_route/pageviews/community.dart';
import 'package:bstone/login_route/pageviews/funny.dart';
import 'package:bstone/login_route/pageviews/me.dart';
import 'package:bstone/login_route/pageviews/sweet.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _currentIndex = 0;
  List PageViews = [Community(), Sweet(), Funny(), Me()];

  @override
  Widget build(BuildContext context) {
    Widget ToolsCard(BuildContext cotext, int index) {
      return Card(
        child: Container(height: 100, child: Center(child: Text("data"))),
        elevation: 2.0,
      );
    }

    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 1920, allowFontScaling: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName:
                    Text("珍珍", style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text("2371076453@qq.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2233854763,678386514&fm=11&gp=0.jpg"),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2233854763,678386514&fm=11&gp=0.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.orange.withOpacity(0.1),
                      BlendMode.hardLight,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  // Navigator.pop(context);
                },
                title: Text(
                  "Message",
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  //向右对齐图标
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
              ),
              ListTile(
                onTap: () {
                  // Navigator.pop(context);
                },
                title: Text(
                  "Message",
                  textAlign: TextAlign.right,
                ),
                trailing: //向右对齐图标
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
              ),
              ListTile(
                onTap: () {
                  // Navigator.pop(context);
                },
                title: Text(
                  "Message",
                  textAlign: TextAlign.right,
                ),
                trailing: //向右对齐图标
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
              ),
            ],
          ),
        ),
        endDrawer: Container(
          width: 120,
          child: Drawer(
            child: ListView.builder(itemCount: 15, itemBuilder: ToolsCard),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              // ignore: deprecated_member_use
              title: Text(
                "社区",
                style: TextStyle(fontFamily: 'iconfont', fontSize: 12),
              ),
              activeIcon: Icon(Icons.chat_bubble),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              // ignore: deprecated_member_use
              title: Text(
                "亲密",
                style: TextStyle(fontFamily: 'iconfont', fontSize: 12),
              ),
              activeIcon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_satisfied_outlined),
              // ignore: deprecated_member_use
              title: Text(
                "趣事",
                style: TextStyle(fontFamily: 'iconfont', fontSize: 12),
              ),
              activeIcon: Icon(Icons.sentiment_very_satisfied),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                // ignore: deprecated_member_use
                title: Text(
                  "我的",
                  style: TextStyle(fontFamily: 'iconfont', fontSize: 12),
                ),
                activeIcon: Icon(Icons.person)),
          ],
        ),
        body: PageViews[_currentIndex],
      ),
    );
  }
}
