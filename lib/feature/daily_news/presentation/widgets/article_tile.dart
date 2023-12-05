import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Text("Image"),
          Text("Image"),
          Text("Image")
        ],
      ),
    );
  }
}
