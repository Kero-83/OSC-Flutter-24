// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, unused_local_variable

import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/views/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        // accentColor: Colors.blueAccent,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blueAccent,
          selectionColor: Colors.blueAccent,
          selectionHandleColor: Colors.blueAccent,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.blueAccent),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
