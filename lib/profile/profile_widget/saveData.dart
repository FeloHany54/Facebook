import 'package:flutter/material.dart';
import 'package:my_facbook/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Savedata extends ChangeNotifier {
  saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Email", (Login()..emailController) as String);
    prefs.setString("Password", (Login()..passwordController) as String);
    notifyListeners();
  }

  getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.getString("Email");
    notifyListeners();
  }

  getPassword() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.getString("Password");
    notifyListeners();
  }
}
