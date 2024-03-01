import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function onClicked;
  final String title;
  const AppButton({super.key, required this.title, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              onClicked();
            },
            child: Text(title)));
  }
}
