import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:my_facbook/Widgets/homeScreen_Buttom.dart';
//import 'package:my_facbook/Widgets/homeScreen_Story.dart';
import 'package:my_facbook/profile/profile_page/profile_page.dart';
import 'package:my_facbook/profile/profile_widget/user_Model.dart';
//import 'package:my_facbook/Widgets/reacts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final profileImage = Provider.of<UserModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            color: Color(0xff1877F2),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),

            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 20),
            ),
          ),
          SizedBox(width: 5),
          Badge(
            label: Text("+99"),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.maps_ugc_sharp, size: 20),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),

                child: Row(
                  children: [
                    profileImage.user?.image == null
                        ? CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, size: 30),
                        )
                        : CircleAvatar(
                          radius: 30,
                          backgroundImage: FileImage(
                            profileImage.user?.image as File,
                          ),
                        ),
                    SizedBox(width: 15),
                    Text(
                      "What’s on your mind?",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.video_settings_outlined, color: Colors.red),
                      SizedBox(width: 5),
                      Text("Live"),
                    ],
                  ),
                  Container(height: 50, width: 1, color: Colors.grey),
                  Row(
                    children: [
                      Icon(Icons.image, color: Colors.green),
                      SizedBox(width: 5),
                      Text("Photo"),
                    ],
                  ),
                  Container(height: 50, width: 1, color: Colors.grey),
                  Row(
                    children: [
                      Icon(
                        Icons.video_settings_outlined,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(width: 5),
                      Text("Room"),
                    ],
                  ),
                ],
              ),

              Divider(thickness: 5, color: Colors.blueGrey),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // HomescreenStory(
                      //   imageProfile: "assets/Image-Person1.png",
                      //   imageStory: "assets/Image-Person2.jpg",
                      //   name: "Felo",
                      // ),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 90,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Image-Person6.png"),
                              ),
                            ),
                          ),
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
                                    backgroundImage: AssetImage(
                                      "assets/Image-Person1.png",
                                    ),
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
                              "Mariam Emad",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 90,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Image-Person3.jpg"),
                              ),
                            ),
                          ),
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
                                    backgroundImage: AssetImage(
                                      "assets/Image-Person6.png",
                                    ),
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
                              "Jero Mina",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 90,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Image-Person4.png"),
                              ),
                            ),
                          ),
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
                                    backgroundImage: AssetImage(
                                      "assets/Image-Person2.jpg",
                                    ),
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
                              "Jana Ali",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 90,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Image-Person5.png"),
                              ),
                            ),
                          ),
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
                                    backgroundImage: AssetImage(
                                      "assets/Image-Person6.png",
                                    ),
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
                              "Nour Ahmed",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 5, color: Colors.blueGrey),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/Image-Person1.png'),
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text("Margaret Sensei"),
                        Row(
                          children: [
                            Text("3d . ", style: TextStyle(color: Colors.grey)),
                            Icon(
                              Icons.south_america_rounded,
                              size: 15,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Some Of You don't have PVC's and you don;t care some of you have but are planning to stay awayon electionday. Bymeans stay away Some Of You don't have PVC's and you don;t care some of you have but are planning to stay awayon electionday. Bymeans stay away Some Of You don't have PVC's and you don;t care some of you have but are planning to stay awayon electionday. Bymeans stay away Some Of You don't have PVC's and you don;t care some of you have but are planning to stay awayon electionday. Bymeans stay away ",
                  maxLines: 10,
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/react1.png",
                      height: 16,
                      width: 16,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/react2.png",
                      height: 16,
                      width: 29,
                      fit: BoxFit.cover,
                    ),
                    Text("100", style: TextStyle(color: Colors.grey)),
                    Spacer(),
                    Text(
                      "30 comment   4 share",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/Like.png"),
                        SizedBox(width: 2),
                        Text("Like", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.messenger_outline_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 2),
                        Text("Comment", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.screen_share_outlined, color: Colors.grey),
                        SizedBox(width: 2),
                        Text("Share", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),

              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
