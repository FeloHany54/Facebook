import 'package:flutter/material.dart';

class Reacts extends StatelessWidget {
  const Reacts({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(children: [icon, Text(text)]));
  }
}

// Icon(Icons.messenger_outline_outlined)
