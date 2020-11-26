import 'package:flutter/material.dart';

class LoveViewRoute extends StatefulWidget {
  @override
  _LoveViewRouteState createState() => _LoveViewRouteState();
}

class _LoveViewRouteState extends State<LoveViewRoute> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) {
      return BottomAppBar(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Text("data"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
    );
  }
}
