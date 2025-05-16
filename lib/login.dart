import 'package:flutter/material.dart';
import 'package:my_facbook/Widgets/textFormField.dart';
import 'package:my_facbook/home_screen.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/login-facebook.png',
            width: double.infinity,
            height: 207,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 20),
          TextFormFieldWidget(controller: emailController, hintText: "Email"),
          SizedBox(height: 15),
          TextFormFieldWidget(
            controller: passwordController,
            hintText: "Password",
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: MaterialButton(
              minWidth: MediaQuery.sizeOf(context).width,
              height: 35,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              color: Color(0xff1877F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 23),
          InkWell(
            onTap: () {},
            child: Text(
              "Forgotten Password?",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff1877F2),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xff606060),
                    indent: 63,
                    endIndent: 13,
                  ),
                ),

                Text("OR", style: TextStyle(fontSize: 11)),

                Expanded(
                  child: Divider(
                    color: Color(0xff606060),
                    indent: 13,
                    endIndent: 63,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: MaterialButton(
              minWidth: MediaQuery.sizeOf(context).width,
              onPressed: () {},
              color: Color.fromARGB(107, 101, 219, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Create New Account",
                style: TextStyle(
                  color: Color(0xff1877F2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}
