// lib/registration_page.dart

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:chat_app/helper/snack_bar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      var user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // print('Email: $email');
      // print('Password: $password');
      // print(user.user!.displayName);
      // print("user created");
      showSnackBarText(context, "Registraion Successed!");
    } on FirebaseAuthException catch (e) {
      // print('Email: $email');
      // print('Password: $password');
      // print("FAILED");
      print(e);
      if (e.code == "weak-password") {
        showSnackBarText(context, "Weak Password");
      }
      else if(e.code == "email-already-in-use")
      {
        showSnackBarText(context, "Email Already In Use");
      }
      else
      {
        showSnackBarText(context, e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
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
              onPressed: _register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
