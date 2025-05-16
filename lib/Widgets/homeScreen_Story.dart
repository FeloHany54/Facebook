import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomescreenStory extends StatelessWidget {
  HomescreenStory({
    super.key,
    required this.name,
    required this.imageStory,
    required this.imageProfile,
  });
  String name;
  String imageStory;
  String imageProfile;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(imageStory, fit: BoxFit.fill, height: 150, width: 90),
          Positioned(
            top: 5,
            left: 3,
            child: Stack(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 2.5,
                  left: 2.5,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imageProfile),
                    radius: 10,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 130,
            left: 2.5,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
