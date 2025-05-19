import 'package:image_picker/image_picker.dart';
import 'package:my_facbook/login.dart';
import 'package:my_facbook/profile/profile_widget/options.dart';
import 'package:my_facbook/profile/profile_widget/user_Model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //final userData = Provider.of<Login>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Profile")), // title of page

      body: Column(
        children: [
          Center(
            child: Consumer<UserModel>(
              // rebuild when any changes happend
              builder: (context, userModel, child) {
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      //for profile image
                      backgroundColor: Colors.grey.shade500,
                      radius: 100,

                      child:
                          userModel.user?.image == null
                              ? Icon(
                                color: Colors.white38,
                                Icons.person,
                                size: 200,
                              )
                              : ClipOval(
                                child: Image.file(
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                  userModel.user!.image!,
                                ),
                              ),
                    ),
                    CircleAvatar(
                      // for camera buttom
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder:
                                (context) => SizedBox(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Profile",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Options(
                                            onpressed: () {
                                              userModel.imageSelector(
                                                ImageSource.camera,
                                              );
                                              Navigator.pop(context);
                                            },
                                            title: "Camera",
                                            icon: Icons.camera_alt,
                                          ),
                                          Options(
                                            onpressed: () {
                                              userModel.imageSelector(
                                                ImageSource.gallery,
                                              );
                                              Navigator.pop(context);
                                            },
                                            title: "Gallery",
                                            icon: Icons.image,
                                          ),
                                          if (userModel.user?.image != null)
                                            Options(
                                              selectedimage:
                                                  userModel.user?.image,
                                              onpressed: () {
                                                userModel.removeImage();
                                                Navigator.pop(context);
                                              },
                                              title: "Delete",
                                              icon: Icons.delete,
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ), // whem press apear white sheet
                          );
                        },
                        icon: Icon(
                          color: Colors.white38,
                          Icons.camera_alt,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
