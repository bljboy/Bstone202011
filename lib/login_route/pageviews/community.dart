import 'package:bstone/login_route/tabviews/loveview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // splashColor: Colors.white70,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: TabBarView(
            children: [
              LoveViwe(),
              Icon(Icons.change_history, size: 128, color: Colors.black12),
              Icon(Icons.local_florist, size: 128, color: Colors.black12)
            ],
          ),
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              //图标未选中的颜色
              indicatorColor: Colors.black54,
              //图标下的滑动条颜色
              indicatorSize: TabBarIndicatorSize.label,
              //滑动条的长度和图标一直
              indicatorWeight: 1.2,
              //滑动条的高度
              tabs: [
                Tab(icon: Icon(Icons.layers)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.local_florist)),
              ],
            ),

            centerTitle: true,
            title: Text("社区"),
            elevation: 0.0,

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
                icon: Icon(Icons.more_horiz),
                tooltip: "搜索",
                onPressed: () {
                  // showToast("点击了搜索");
                  debugPrint("点击了搜索");
                },
              ),
            ],
          ),
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
        ),
      ),
    );
  }
}
