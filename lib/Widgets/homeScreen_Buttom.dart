import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenButtom extends StatelessWidget {
  HomeScreenButtom({required this.text, super.key, required this.image});
  String text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(children: [Image.asset(image), Text(text)]));
  }
}
