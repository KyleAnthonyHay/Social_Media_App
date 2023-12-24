import 'package:flutter/material.dart';
import 'package:socialmediaapp/auth/LoginOrRegister.dart';
import 'package:socialmediaapp/pages/LoginPage.dart';
import 'package:socialmediaapp/pages/RegisterPage.dart';
import 'package:socialmediaapp/theme/DarkMode.dart';
import 'package:socialmediaapp/theme/LightMode.dart';
// for firebase
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}

//test