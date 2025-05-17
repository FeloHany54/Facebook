import 'package:flutter/material.dart';
import 'package:my_facbook/Widgets/homeScreen_Story.dart';
import 'package:my_facbook/profile/profile_widget/user_Model.dart';
// import 'package:my_facbook/home_screen.dart';
import 'package:my_facbook/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserModel()),
        // ChangeNotifierProvider(create: (context) => ItemModel()),
        // ChangeNotifierProvider(create: (context) => FavoriteMadel()),
      ],
      child: const Facebook(),
    ),
  );
  //runApp(const Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY Facebook',
      //home: HomeScreen(),
      home: SplashScreen(),
    );
  }
}
