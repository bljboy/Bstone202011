import 'package:bstone/tools/PotoView.dart';
import 'package:flutter/material.dart';

class LoveViewRoute extends StatelessWidget {
  final String title;
  final String image;

  const LoveViewRoute({Key key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PotoView(
                  imageProvider: NetworkImage(image),
                  heroTag: "simple",
                );
              }));
            },
            child: Image.network(image)));
  }
}
