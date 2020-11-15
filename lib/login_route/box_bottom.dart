import 'package:bstone/login_route/pageviews/community.dart';
import 'package:bstone/login_route/pageviews/funny.dart';
import 'package:bstone/login_route/pageviews/me.dart';
import 'package:bstone/login_route/pageviews/sweet.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List PageViews = [Community(), Sweet(), Funny(), Me()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
