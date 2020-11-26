import 'package:bstone/model/post.dart';
import 'package:bstone/tools/PotoView.dart';
import 'package:flutter/material.dart';

class CustomScrollViewdemo extends StatelessWidget {
  final String author;
  final String image;
  final String title;

  const CustomScrollViewdemo({Key key, this.author, this.image, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 230,
            pinned: true,
            actions: [
              FlatButton(
                  onPressed: () {
                    print("分享");
                  },
                  child: Icon(Icons.share_outlined)),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    author,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFCCCCCC),
                    backgroundImage: NetworkImage(image),
                  ),
                ],
              ),
              background: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((content, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF333333),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(),
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite_outline),
      ),
    );
  }
}
