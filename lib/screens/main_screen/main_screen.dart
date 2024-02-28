import 'package:flutter/material.dart';
import 'package:news_app/screens/main_screen/widgets/news_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Clear')),
              ElevatedButton(onPressed: () {}, child: const Text('Refresh')),
            ],
          ),
          ListView.builder(
              itemCount: newsList.count(),
              itemBuilder: (context, index) {
                return NewsItem(newsList(index));
              }),
        ],
      ),
    );
  }
}
