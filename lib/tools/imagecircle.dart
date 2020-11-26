import 'package:flutter/material.dart';

class ImageVCircle extends StatelessWidget {
  final String imageUrl;

  const ImageVCircle(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
