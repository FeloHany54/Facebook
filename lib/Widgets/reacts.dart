import 'package:flutter/material.dart';

class Reacts extends StatelessWidget {
  Reacts({super.key, required this.icon, required this.text});
  Icon icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(children: [icon, Text(text)]));
  }
}

// Icon(Icons.messenger_outline_outlined)
