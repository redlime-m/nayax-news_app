import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(''),
          Column(
            children: [
              //title text
              //author text
              //description text
            ],
          ),
        ],
      ),
    );
  }
}
