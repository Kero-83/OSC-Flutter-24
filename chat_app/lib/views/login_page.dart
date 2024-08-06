// ignore_for_file: unused_local_variable, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, use_build_context_synchronously

import 'package:chat_app/helper/snack_bar_helper.dart';
import 'package:chat_app/views/registration_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    // Perform login logic here
    // print('Email: $email');
    // print('Password: $password');
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      var user = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Scaffold()),
      );
    } on FirebaseAuthException catch (e) {
      // if (e.code == "user-not-found") {
      //   showSnackBarText(context, "User Not Found!");
      // } else if (e.code == "wrong-password") {
      //   showSnackBarText(context, "Wrong Password!");
      // } else {
      //   showSnackBarText(context, e.toString());
      // }
      print(e.code);
      if (e.code == 'user-not-found') {
        showSnackBarText(context, "User Not Found!");
      } else if (e.code == 'wrong-password') {
        showSnackBarText(context, "Wrong Password!");
      } else {
        showSnackBarText(context, "Invalid Email or Password");
      }
    }
  }

  void _navigateToRegistration() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              style:
                  TextStyle(color: Colors.white), // Text color for dark theme
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              style:
                  TextStyle(color: Colors.white), // Text color for dark theme
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: _navigateToRegistration,
              style: TextButton.styleFrom(
                  // primary: Colors.blueAccent, // Text color for dark theme
                  ),
              child: Text('Don\'t have an account?   Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
