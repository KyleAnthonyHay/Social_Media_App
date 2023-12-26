import 'package:flutter/material.dart';
import 'package:socialmediaapp/auth/LoginOrRegister.dart';
import 'package:socialmediaapp/auth/auth.dart';
import 'package:socialmediaapp/pages/HomePage.dart';
import 'package:socialmediaapp/pages/ProfilePage.dart';
import 'package:socialmediaapp/pages/UsersPage.dart';
import 'package:socialmediaapp/theme/DarkMode.dart';
import 'package:socialmediaapp/theme/LightMode.dart';
// for firebase
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/LoginOrRegister': (context) => const LoginOrRegister(),
        '/HomePage': (context) => const HomePage(),
        '/ProfilePage': (context) => const ProfilePage(),
        '/UsersPage': (context) => const UserPage(),
      },
    );
  }
}

//test