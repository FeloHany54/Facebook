import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_facbook/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => Login())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Image.asset('assets/Logo-facebook.png'),
          const Spacer(),
          const Text(
            "from",
            style: TextStyle(color: Color(0xff555151), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Logo-meta.png'),
              const SizedBox(width: 3.62),
              const Text(
                "Meta",
                style: TextStyle(color: Color(0xff1877F2), fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
